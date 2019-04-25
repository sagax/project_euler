compile_ocaml() {
    output=$(ocaml $filename)
}

compile_haskell() {
    ghc -v0 -o compile_haskell $filename 2>/dev/null
    if [[ $? -eq 0 ]]; then
      output="$(./compile_haskell)"
    else
      output="not compiled"
    fi
    rm -f haskell.{hi,o}
    rm -f compile_haskell
}

compile_nim() {
    nim compile --verbosity:0 --hints:off --warnings:off $filename
    if [[ $? -eq 0 ]]; then
      output="$(./nim)"
    else
      output="not compiled"
    fi
    rm -rf nimcache
    rm -rf nim
}

compile_assembler() {
    nasm -f elf64 $filename
    ld -o compile_assembler assembler.o
    output="$(./compile_assembler)"
    rm -f assembler.o
    rm -f compile_assembler
}

compile_rust() {
    rustc -o "compile_rust" $filename
    output="$(./compile_rust)"
    rm -f "compile_rust"
}

compile_java() {
    javac $filename
    output="$(java compile_java)"
    if [[ $? -eq 1 ]]; then
        output=""
    else
        rm -f compile_java.class
    fi
}

compile_go() {
    go build -o compile_go $filename
    output="$(./compile_go)"
    rm -f compile_go
}

compile_perl() {
    output="$(perl $filename)"
}

compile_cpp() {
    gcc -o compile_cpp $filename
    output="$(./compile_cpp)"
    rm -f compile_cpp
}

compile_clojure() {
    output="$(clojure $filename)"
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
    rm -f compile_c
}

compile_cpp() {
    gcc -o compile_cpp $filename
    output="$(./compile_cpp)"
    rm -f compile_cpp
}

compile_bash() {
    output="$(bash $filename)"
}

compile_python2() {
    output="$(python2 $filename)"
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
    output="$(erlc $filename && erl -noshell -s erl -s init stop)"
    rm -f erl.beam
    rm -f erl_crash.dump
}

compile_racket() {
    output="$(racket $filename)"
}

compile_dart() {
    output="$(dart $filename)"
}

compile_crystal() {
    crystal build $filename
    output=$(./crystal)
    rm -f crystal
}

compile_vim() {
    output=$(vim -es -R -N -u NONE -n -S $filename)
}

compile_moonscript() {
    output=$(moon $filename)
}
