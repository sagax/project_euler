" VIM - Vi IMproved 8.1
let summ = 0
let index = 0
while index < 1000
    if index % 3 == 0 || index % 5 == 0
        let summ += index
    endif
    let index += 1
endwhile

redir >> /dev/stdout
echo summ
:qa
