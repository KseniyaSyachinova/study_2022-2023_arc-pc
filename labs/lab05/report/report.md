---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Компьютерные науки и технология программирования"
author: "Сячинова Ксения Ивановна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы

1. Создаём каталог для работы с программами на языке ассемблера NASM и переходим в него.

![Создание и переход в каталог](image/1.png){ #fig:001 width=70% }

Затем создаём тектовый файл с 'hello.asm' и открываем его с помощью тектового редактора 'gedit' 

![Создание текстового файла](image/2.png){ #fig:002 width=70% }

Вводим следующий текст в текстовом документе. 

![Текст программы](image/3.png){ #fig:003 width=50% }

2. После этого превращаем текст программы в объектный код. Для этого используем комнаду 'nasm -f elf hello.asm'. Объектный файл создан, т.к. текст написан без ошибок.Транслятор преобразовал объектный код, который был записан в файл 'hello.o' Проверяем это с помощью комнады 'ls'.

![Преобразование текста](image/4.png){ #fig:004 width=70% }

3. После этого выполним следующую команду: 'nasm -o obj.o -f elf -g -l list.lst hello.asm'. Данная команда скомпилирует исходный файл в obj.o.Также, этой же командой создаётся файл 'list.lst' Команда 'ls' помогает нам проверить создание файлов.

![Компиляция файлы](image/5.png){ #fig:005 width=70% }

Для более подробной информации может использовать команду 'man nasm'. 

![Ввод команды](image/6.png){ #fig:006 width=75% }

![Вывод команды](image/7.png){ #fig:007 width=60% }

Для получения списка форматов объектного файла используем 'nasm -hf'. 

![Ввод и вывод команды](image/8.png){ #fig:008 width=60% }

4. Затем необходимо объектный файл передать на обработку компоновщику. Это можно делать с помощью команды 'ld -m elf_i386 hello.o -o hello'. Проверяем с помощью команды 'ls'.

![Передача файла на компановку](image/9.png){ #fig:009 width=70% }

Затем выполняем команду 'ld -m elf_i386 obj.o -o main'. Получаем сполняемый файл, который имеет название 'hello'. Объектный файл из которого собран этот исполняемый файл называется hello.o. 

![Выполнение команды](image/10.png){ #fig:010 width=70% }

Команда 'ld --help' позволяет нам увидеть формат командной строки LD. Для получения более подробной инфомрайии можно использовать команду 'man ld'. 

![Формат командной строки](image/11.png){ #fig:011 width=60% }

![Ввод команды](image/12.png){ #fig:012 width=70% }

![Выполнение команды](image/13.png){ #fig:013 width=60% }

5. Для запуска программы вводим в командной строке './hello'. Программа работает корректно.

![Запуск программы](image/14.png){ #fig:014 width=60% }

# Задания для самостоятельной работы

1. В каталоге, созданном для лабораторной работы №5, создаём копию файла hello.asm с именем lab5.asm. Для этооо используем комнаду 'cp'. 

![Копирование и переименовапние файла](image/15.png){ #fig:015 width=60% }

2. Затем изменяем программу так, чтобы вместо "Hello world!" выводилась фамилия и имя. 

![Переход в тестовый файл](image/16.png){ #fig:016 width=70% }

![Изменение программы](image/17.png){ #fig:017 width=60% }

3. Выполняем необходимые действия: трансляция в объектный файл, компоновка объектного файла. После этого запускаем нашу программу.

![Итог программы](image/18.png){ #fig:018 width=60% }


# Выводы

В ходе выполнение данной лабораторной работы, я освоила процедуру компиляции и сборки программ, написанных на ассемблере NASM.
