---
## Front matter
title: "Отчёт по лабораторной работе №4"
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

# Цель рабоы
Освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Выполнение лабораторной работы

1. Открываем терминал

2. Переходим в каталог курса. Затем обновляем локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull

![Обновление репозитория](image/1.png){ #fig:001 width=60% }

3. Переходим в каталог с шаблоном отчета по лабораторной работе №4. 

![Переход в каталог](image/2.png){ #fig:002 width=60% }

4. Проводим компиляцию шаблона с использованием Makefile. Для этого используем команду make.

![Компиляция](image/3.png){ #fig:003 width=60% }

Проверяем выполнение данных действий. 

![Комнада ls](image/4.png){ #fig:004 width=60% }

![Проверка](image/5.png){ #fig:005 width=60% }

5. Удаляем файлы с использованием Makefile. Для этого вводим команду make clean. Так же проверяем выполнение дейтсвий. 

![Удаление файлов](image/6.png){ #fig:006 width=60% }

![Проверка](image/7.png){ #fig:007 width=60% }

6. Открываем файл report.md c помощью текстового редактора. 

![Открытие файла](image/8.png){ #fig:008 width=60% }

7. Затем, делаем отчёт по данной лабораторной работе. Все изображения помещаем в папку image.После скомпилируем отчет с использованием Makefile.

![Стурктура отчёта](image/9.png){ #fig:009 width=60% }


# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
