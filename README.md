# cheats

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

```

#### ggplot 
```
quote() do notacji naukowej
options(scipen=999) do wyłączenia naukowej
```


