cnormal="\e[0m"
ctrue="\e[1;32m"
cfalse="\e[1;31m"
ccount="\e[1;44m"
cneed="\e[1;41m"
result=0
test_count=0
name=(as asm awk bash c clojure coffeescript cpp erl go hs java javascript lua php python python3 r rs ruby swift tcl)

array_remove_value() {
    value=$1
    for i in "${!name[@]}"
    do
        if [[ "${name[$i]}" == $value ]]
        then
            unset name[$i]
        fi
    done
}

def_count() {
    printf "\n"
    printf "count pass: ${ccount} $test_count ${cnormal}\n"
    printf "count need: ${cneed} ${#name[*]} ${cnormal}\n"
    printf "lang need: ${name[*]}\n"
}

def_test() {
    commandname=$1
    output=$2
    if [[ $output -eq $result ]]
    then
        printf "$commandname: \t ${ctrue}TRUE${cnormal}\n"
        test_count=$((test_count + 1))
    else
        printf "$commandname: \t ${cfalse}FALSE${cnormal}\n"
        test_count=$((test_count + 1))
    fi
}

def_command() {
    commandname=$1
    filename=$2
    case "$commandname" in
        "python" )
            def_test $commandname "$(python $filename)"
            ;;
        "python3" )
            def_test $commandname "$(python3 $filename)"
            ;;
        "ruby" )
            def_test $commandname "$(ruby $filename)"
            ;;
        "tcl" )
            def_test $commandname "$(tclsh $filename)"
            ;;
        "javascript" )
            def_test $commandname "$(node $filename)"
            ;;
        "coffeescript" )
            def_test $commandname "$(coffee $filename)"
            ;;
        "bash" )
            def_test $commandname "$(bash $filename)"
            ;;
        "c" )
            def_test $commandname "$(gcc -o compile -std=c99 $filename && ./compile)"
            ;;
        "lua" )
            def_test $commandname "$(lua $filename)"
            ;;
        "php" )
            def_test $commandname "$(php $filename)"
            ;;
        "awk" )
            def_test $commandname "$(awk -f $filename)"
            ;;
        "r" )
            def_test $commandname "$(Rscript $filename)"
            ;;
        "clojure" )
            def_test $commandname "$(java -cp ~/programs/clojure/clojure-1.7.0/clojure-1.7.0.jar clojure.main $filename)"
            ;;
        "*" )
            echo "nothing"
            ;;
    esac
}

def_find() {
    basename=$1
    filename=$2
    for i in "${name[@]}"
    do
        if [[ $basename == $i ]]
        then
            value=$i
            def_command $i $filename
            array_remove_value $value
        fi
    done
}

run_check() {
    for file in *
    do
        if [[ -f $file ]]
        then
            filename=$file
            array=(${filename//./ })
            def_find ${array[0]} $filename
        fi
    done
    def_count
}
