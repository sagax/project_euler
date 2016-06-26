compile_haskell() {
    ghc -v0 -o compile_haskell $filename
    output="$(./compile_haskell)"
    rm haskell.{hi,o}
    rm compile_haskell
}

compile_assembler() {
    nasm -f elf64 $filename
    ld -o compile_assembler assembler.o
    output="$(./compile_assembler)"
    rm assembler.o
    rm compile_assembler
}

compile_rust() {
    rustc -o "compile_rust" $filename
    output="$(./compile_rust)"
    rm "compile_rust"
}

compile_java() {
    javac $filename
    output="$(java compile_java)"
    rm compile_java.class
}

compile_go() {
    go build -o compile_go $filename
    output="$(./compile_go)"
    rm compile_go
}

compile_perl() {
    output="$(perl $filename)"
}

compile_cpp() {
    gcc -o compile_cpp $filename
    output="$(./compile_cpp)"
    rm compile_cpp
}

compile_clojure() {
    if [[ -f $HOME/programs/clojure/clojure-1.7.0/clojure-1.7.0.jar ]]
    then
        output="$(java -cp $HOME/programs/clojure/clojure-1.7.0/clojure-1.7.0.jar clojure.main $filename)"
    elif [[ -f $HOME/programs/clojure/clojure-1.8.0/clojure-1.8.0.jar ]]
    then
        output="$(java -cp $HOME/programs/clojure/clojure-1.8.0/clojure-1.8.0.jar clojure.main $filename)"
    fi
}

compile_r() {
    output="$(Rscript $filename)"
}

compile_awk() {
    output="$(awk -f $filename)"
}

compile_php() {
    output="$(php $filename)"
}

compile_lua() {
    output="$(lua $filename)"
}

compile_c() {
    gcc -o compile_c -std=c99 $filename
    output="$(./compile_c)"
    rm compile_c
}

compile_cpp() {
    gcc -o compile_cpp $filename
    output="$(./compile_cpp)"
    rm compile_cpp
}

compile_bash() {
    output="$(bash $filename)"
}

compile_python() {
    output="$(python $filename)"
}

compile_python3() {
    output="$(python3 $filename)"
}

compile_tcl() {
    output="$(tclsh $filename)"
}

compile_javascript() {
    output="$(node $filename)"
}

compile_coffeescript() {
    output="$(coffee $filename)"
}

compile_ruby() {
    output="$(ruby $filename)"
}

compile_erlang() {
    erlc $filename
    output="$(erl -noshell -s erl -s init stop)"
    rm erl.beam
    if [[ -f erl_crash.dump ]]
    then
        rm erl_crash.dump
    fi
}
