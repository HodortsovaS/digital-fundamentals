#!/bin/bash
for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
    name=$(echo $info | cut -d ":" -f1)
    age=$(echo $info | cut -d ":" -f2)
    mail=$(echo $info | cut -d ":" -f3)
    if [[ $mail =~ .*@spbstu.* ]]
    then
        echo -e "Имя: $name, Возраст: $age, Мейл: $mail"
    else
        echo -e "не найдено"
    fi
    done
done
