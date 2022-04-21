# [Задание](https://hackmd.io/@0x41/OS_Lab_4)

Требования к языкам программирования: JAVA, C++, python, assembler

Разработать программу на нескольких языках, реализующую следующую математическую функцию в цикле
![image](https://user-images.githubusercontent.com/46849169/163416786-4fdd2f3e-1937-4948-984e-9db89ccc4533.png)

и сравнить производительность в зависимости от языка.

Программа на ассемблере была переписана(в методичке приложены инсрукции с библиотекой для эмуляции на линуксе) для комфортной реализации на Windows, переписанная программа "объединяет" 231Lib.asm и SpeedTest2.asm, имеет прописанные функции.

Использловался компилятор: NASM

Для создания exe файла: GoLink

[Источник](https://www.youtube.com/watch?v=AHPeKY8lANk)

Для измерения времени работы использовался cmd скрипт

[Источник](https://askdev.ru/q/kak-izmerit-vremya-vypolneniya-komandy-v-komandnoy-stroke-windows-2851/)

## Инструкция

В репозитории находится папки проектов C#,C++,Python,Assembler.

Проекты C# и C++ разработаны в Visual Studia

Python разработан в Pycharm

1. Для реализации программы Assembler на Windows необходимо скачать один из компиляторов ассемблера(для этого задания использовался NASM) c официального сайта и линкер для создание exe

2. В Notepade++ был создан файл с расширением asm

3. После этого в CMD были прописаны следующие строки:

nasm -f win32 [Названия файла с кодом].asm -o [Название файла с кодом].obj

golink /entry:_start /console kernel32.dll user.32.dll [Название файла с кодом].obj

Где: - Ключ -o. Указание имени выходного файла
     - Ключ -f. Указание формата выходного файла
     - /entry:_start метка старта  

[Руководство](https://www.opennet.ru/docs/RUS/nasm/)




## Отчет

Assembler

![image](https://user-images.githubusercontent.com/46849169/163322001-6eb1b1e5-380d-455e-ace9-c0fda2da587f.png)

C++

![image](https://user-images.githubusercontent.com/46849169/163322232-f5df4eea-120c-470a-83be-b85e576060d3.png)

C#

![image](https://user-images.githubusercontent.com/46849169/163322390-d0871186-3652-4273-a7a1-0609d990355d.png)

Python

![image](https://user-images.githubusercontent.com/46849169/163322559-9cce530b-6b87-4f12-b6fc-fbecd13023f8.png)
