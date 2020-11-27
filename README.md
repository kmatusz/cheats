# cheats

#### GIT
```
git branch -d branch_name  -usunięcie lokalnego brancha
git branch -D branch_name  -usunięcie lokalnego brancha kiedy nie jest zmerge'owany (używać w wyjątkowych przypadkach)
git push origin --delete <branch_name> -usunięcie brancha na serwerze
git branch - lista wszystkich branchy
git branch <branch_name> utworzenie brancha
git checkout -b <branch_name> utworzenie brancha i przełączenie
git pull
git checkout <commit-hash> przeskoczenie do konkretnego commita 
git reset --soft HEAD~1 usunięcie obecnego commita (przed pushem)
git diff --name-only branch_name pokazanie, które pliki zostały zmienione 
git add -u dodanie wielu plików do usunięcia

Cofnięcie do konkretnego commita (używać w ostateczności):
git reset --hard cedc856
git push --force origin master


```

#### VIM
```
a - wejście w tryb edycji
esc - wyjście z trybu edycji
:q - wyjście
:wq - zapisz i wyjdź


```


#### Linki
```
http://r4ds.had.co.nz/tidy-data.html#spreading-and-gathering  spread, gather
https://appsilon.com/r-studio-shortcuts-and-tips/
https://edgarruiz.shinyapps.io/db-dashboard/ - interaktywny dashboard
https://github.com/ropensci/assertr - testowanie poprawności danych
https://kellobri.github.io/shiny-prod-book - shiny in production - workshop notes
http://swcarpentry.github.io/good-enough-practices-in-scientific-computing/

https://www.toptal.com/python/python-design-patterns
https://python-textbok.readthedocs.io/en/1.0/Object_Oriented_Programming.html


```
#### Ogólne R
```ctrl+shift+a - reindent
unlist(c) spłaszczanie
as.character(levels(df$V1))[df$V1]  zmiana factora na liczbę/character
plyr::rbind.fill()

& w wektorach zwraca wektor
&& w wektorach zwraca 1. wynik dla wektora
all() czy wszystkie są true
any() czy jakiekolwiek jest true
repeat {break} == while(TRUE)
break
next - przejście od razu do kolejnej iteracji
exists('a') czy istnieje obiekt a?
rm(list=ls())
format - funkcja do formatowania liczb, np separator dziesiętny itd

Długość df to nrow a nie length
zliczenie nanów w wierszu:
df$na_count <- apply(df, 1, function(x) sum(is.na(x)))

Porównanie tabel 
all.equal(df1, df2)

Żeby for było wydajne trzeba najpierw alokować przestrzeń, np
output <- vector("double", ncol(df)) 
W for używać seq_along(df)

stocks <- tibble(
  year   = c(2015, 2016),
  half1 = c(1.8, 0.1),
  half2 = c(0.92, 0.17)
)
stocks%>%gather(half1, half2, key='half', value='return')%>%
  spread(key=half, value=return)  gather spread


```

#### Purr
```
map(lista, mean) zwraca listę z policzoną średnią
map_dbl() zwraca wektor numeryczny
a%>%map(~c('avg'=mean(.), 'sd'=sd(.))) to samo co function(x)
map2(a,b, sum) map tylko dla 2 argumentów
```

#### Regexy, stringi
```https://regexr.com/
. każdy poza nową linią
[a-z], [A-Z], [0-9] każdy pomiędzy
{5} dokładnie 5
[abc]{1,} więcej niż 0
(grupa)
\t tab
\n linia
\r
W R escape trzeba np.   \\.

https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html
str_split('_') podziel z separatorem
str_replace('a', '') zamień w każdym stringu


str_sub(x, 3, 3) Wybierz trzecią literę
str_sub(x, 2, -2)


\d - a digit
[A-Za-z0-9] - match characters without special signs
[^abc] - match all characters except a,b,c
. - any character
\ - escape special sign
^ - starts line with following character
$ - ends line with previous character
^abc$ - starts and ends with 
* - match 0 or more of previous thing
+ - match 1 or more of previous thing
\s - match any whitespace
| - alternative e.g. [pre|post] - match one or the second
{2} - 2 repetitions
{2,} - 2 or more repetitions
(...) - match group

# Examples python:
import re
sentence = "We bought our  Golden Retriever, Snuggles, for $30 on 1/1/2015 at 1017 Main St. where they   have many dogs."
re.search(r"the", sentence) is not None # check if the string contains regex
re.search(r"the", sentence).group() # find first occurence of word
re.findall(r"abc", a) # find all occurences of the word
re.sub(r"abc", "9", a, count = 1) # replace first occurence of word abc with 9
re.sub(r"abc", "9", a, count = 0) # replace all occurences of word abc with 9
re.findall(r'[A-Za-z]{1,3}\w', a) # find all words with from 1 to 3 characters

```
#### Pliki
```
list.files() lista plików w folderze
setwd('')



```
#### Shiny
```każde render* w serverze odpowiada za jeden *output w ui
do keszowania trzeba użyć reactive({}) i później używać re()
Do przycisków observeEvent(input$guzik, {wykonaj})
Żeby nie ładowało się za każdą zmianą parametrów tylko po naciśnięciu przycisku użyć isolate
source("global.R", source = TRUE) - na początku
useShinyjs(), onclick()- do fancy akcji z javascriptem

https://html-online.com/editor/ - edytor html

```

#### Linux 
```
ls lista plików
cd idź do
Rscript a.r odpalenie skryptu
cat a.txt  podgląd pliku (tekst)
rm a.txt usuń
cp origin end  kopiuj
mkdir a twórz folder
find a  szukaj
ps -U login pokaż procesy
pwd pobierz ścieżkę
top pokaż aktywne procesy

crontab -e edytuj crona
cd /working_dir; Rscript /srv/script.R > /srv/log.txt 2>&1 uruchom skrypt w working_dir i odłóż log


```

#### wykresy
```
quote() do notacji naukowej
options(scipen=999) do wyłączenia naukowej
cowplot do rysowania obok siebie
```

#### Excel
```
pe <- function(x,row.names=FALSE,col.names=TRUE,...) {
  write.table(x,"clipboard",sep="\t",row.names=row.names,col.names=col.names,...)
}

pe(my.df)
````

#### SQL sas

```
proc sql;
   insert into sql.newcountries
      set name='Bangladesh',
          capital='Dhaka',
          population=126391060
      set name='Japan',
          capital='Tokyo',
          population=126352003;
          
  
PROC SQL;
UPDATE 
a.foo
SET START = "8:30,9:30,11:00"
WHERE JOB=10;

proc contents data=table_name;
run; - podejrzenie struktury tabeli
```

Proc compare:
```
https://www.sascrunch.com/proc-compare.html

Standardowe:
proc compare
 base = sashelp.class
 compare = sashelp.classfit;
run;

ze zmienną id (muszą być posortowane): 
proc compare base=class compare=classfit;
 id name;
run;
```

Eksport do excela:
```
proc export 
		  data=data_out
		  dbms=xlsx 
		  outfile="/file/name.xlsx" 
		  replace;
		run;
```



Oracle

```
select * from user_tab_partitions where table_name = 'table_name'; - sprawdzenie partycji
add_months(sysdate, -60) - data 5 lat do tyłu
select * from all_tables where owner = 'SCHEMA' order by table_name; - wybranie tabel ze schematu/ownera
select * from a.b where col like 'A%' - zaczyna się od A
select * from a.b where col like 'A_' - zaczyna się od A i dokładnie 1 litera

alter table table_name Rename column old_column_name TO new_column_name; - zmiana nazwy kolumny


```

