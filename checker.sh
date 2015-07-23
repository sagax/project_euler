cnormal="\e[0m"
ctrue="\e[1;32m"
cfalse="\e[1;31m"
result=0

def_test() {
    commandname=$1
    output=$2
    if [[ $output -eq $result ]]
    then
        printf "$commandname: \t ${ctrue}TRUE${cnormal}\n"
    else
        printf "$commandname: \t ${cfalse}FALSE${cnormal}\n"
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
        "*" )
            echo "nothing"
            ;;
    esac
}

def_find() {
    basename=$1
    filename=$2
    name=(python python3 ruby tcl javascript coffeescript bash c)
    for i in "${name[@]}"
    do
        if [[ $basename == $i ]]
        then
            def_command $i $filename
        fi
    done
}

run_check() {
    for file in *
    do
        if [ -f $file ]
        then
            filename=$file
            array=(${filename//./ })
            def_find ${array[0]} $filename
        fi
    done
}
