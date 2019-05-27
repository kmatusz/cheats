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
```

#### wykresy
```
quote() do notacji naukowej
options(scipen=999) do wyłączenia naukowej
cowplot do rysowania obok siebie
```

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

```
