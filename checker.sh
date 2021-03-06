cnormal="\e[0m"
ctrue="\e[1;32m"
cfalse="\e[1;31m"
ccount="\e[1;44m"
cneed="\e[1;41m"
result=0
test_count=0
source ../names.sh
source ../compile_methods.sh
output=""

array_remove_value() {
    value=$1
    for i in "${!names[@]}"
    do
        if [[ "${names[$i]}" == $value ]]
        then
            unset names[$i]
        fi
    done
}

def_count() {
    printf "\n"
    printf "count pass: ${ccount} $test_count ${cnormal}\n"
    printf "count need: ${cneed} ${#names[*]} ${cnormal}\n"
    printf "lang need: ${names[*]}\n"
}

def_test() {
    commandname=$1
    if [[ "$output" =~ [a-z] ]]
    then
        printf "$commandname: \t ${cfalse}FALSE${cnormal}\n"
        test_count=$((test_count + 1))
        printf "%s\n" ">> $output <<"
    else
        if [[ "$output" -eq "$result" ]]
        then
            printf "$commandname: \t ${ctrue}TRUE${cnormal}\n"
            test_count=$((test_count + 1))
            array_remove_value $commandname
        else
            printf "$commandname: \t ${cfalse}FALSE${cnormal}\n"
            test_count=$((test_count + 1))
            printf "%s\n" ">> $output <<"
        fi
    fi
}

def_command() {
    commandname=$1
    filename=$2
    case "$commandname" in
        "python2" )
            compile_python2
            def_test $commandname
            ;;
        "python3" )
            compile_python3
            def_test $commandname
            ;;
        "ruby" )
            compile_ruby
            def_test $commandname
            ;;
        "tcl" )
            compile_tcl
            def_test $commandname
            ;;
        "javascript" )
            compile_javascript
            def_test $commandname
            ;;
        "coffeescript" )
            compile_coffeescript
            def_test $commandname
            ;;
        "bash" )
            compile_bash
            def_test $commandname
            ;;
        "c" )
            compile_c
            def_test $commandname
            ;;
        "crystal" )
            compile_crystal
            def_test $commandname
            ;;
        "lua" )
            compile_lua
            def_test $commandname
            ;;
        "moonscript" )
            compile_moonscript
            def_test $commandname
            ;;
        "nim" )
            compile_nim
            def_test $commandname
            ;;
        "php" )
            compile_php
            def_test $commandname
            ;;
        "awk" )
            compile_awk
            def_test $commandname
            ;;
        "r" )
            compile_r
            def_test $commandname
            ;;
        "clojure" )
            compile_clojure
            def_test $commandname
            ;;
        "cpp" )
            compile_cpp
            def_test $commandname
            ;;
        "go" )
            compile_go
            def_test $commandname
            ;;
        "rust" )
            compile_rust
            def_test $commandname
            ;;
        "java" )
            compile_java
            def_test $commandname
            ;;
        "perl" )
            compile_perl
            def_test $commandname
            ;;
        "assembler" )
            compile_assembler
            def_test $commandname
            ;;
        "erl" )
            compile_erlang
            def_test $commandname
            ;;
        "haskell" )
            compile_haskell
            def_test $commandname
            ;;
        "ocaml" )
            compile_ocaml
            def_test $commandname
            ;;
        "racket" )
            compile_racket
            def_test $commandname
            ;;
        "dart" )
            compile_dart
            def_test $commandname
            ;;
        "vim" )
            compile_vim
            def_test $commandname
            ;;
        "*" )
            echo "nothing"
            ;;
    esac
}

def_find() {
    basename=$1
    filename=$2
    for i in "${names[@]}"
    do
        if [[ $basename == $i ]]
        then
            value=$i
            def_command $i $filename
        fi
    done
}

run_check() {
    local target="$1"
    local commandname

    if [[ -n $target ]]
    then
        filename=$target
        array=(${filename//./ })
        def_find ${array[0]} $filename
    else
        for file in *
        do
            if [[ -f "$file" ]]
            then
                filename=$file
                array=(${filename//./ })
                def_find ${array[0]} $filename
            fi
        done
        def_count
    fi
}
