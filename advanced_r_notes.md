#### 2. Names and values

x <- c(1,2,3)
y <- x

y i x wskazują na ten sam obiekt

y[1] <- 4
Copy on modify - y przestaje być tym samym obiektem co x. Jeżeli jeszcze raz zmodyfikujemy y to się nie skopiuje (modify-in-place optimisation)

Lista zawiera wskaźniki na obiekty - jeżeli modyfikujemy 1 obiekt z listy to reszta listy dalej wskazuje na ten sam obiekt

Dataframe to lista wektorów - jeżeli modyfikujemy 1 kolumnę to tylko ona zostaje zmieniona. Jeżeli modyfikujemy wiersz to caly dataframe jest skopiowany

Wektor znaków zawiera wskaźniki na "global string pool"- wszystkie stringi są reused jeżeli jest potrzeba
1:1e10 - R przechowuje tylko początek i koniec

Environments są modified in place:
e1 <- new.env()
e1$a <- 3
e2 <- e1

e2$a <- 4
e1$a daje 4

garbage collector jest automatyczny - kiedy robimy rm(a) to obiekt zostaje w pamięci ale nie jest przypisany do niczego. Takie obiekty usuwa gc()


15 min

#### 3. Vectors

NULL - generic zero length vector

typeof(a) - typ wektora

NA zawsze daje NA z wyjątkami:
NA^0 = 1
NA | TRUE = TRUE
NA & FALSE = FALSE

Coercion rules :
character → double → integer → logical
TRUE -> 1

##### Attributes


attr(a, "x) <- "cos" Zapisz cos jako atrybut obiektu a o nazwie x
attr(a, "x") - pokaż atrybut x obiektu a 
attributes(a) - pokaż wszystkie atrybuty 
a <- structure(content, "attr1"=3) - dodaj atrybut do zmiennej

Atrybuty są usuwane przez większość funkcji. Dwa wyjątki to names i dim
x <- 1:3
names(x) <- c("a", "b", "c")
ekwiwalent do:
x <-setNames(1:3, "a", "b", "c")

Zwykły wektor ma NULL dimensions, można stworzyć 1-wymiarowy w odwrotną stronę niż normalnie

10 min

##### Factors

##### Dates 

Typ date ma class="Date" i type double

Pod spodem - liczba dni od 1970-01-01

POSIXct - datetime, liczba sekund od 1970-01-01

Difftime - różnica czasu, mają atrybut "unit" i wartość liczbową

format(date, "%d.%m.%y") - formatowanie do stringa


#### 9. Functionals
Funkcjonał - bierze funkcje jako input i zwraca wektor rzeczy

purrr:::map - zwraca listę
Data frame zamienia się w listę kolumn

sapply - stara się uprościć wynik, przez co nie wiadomo co zwróci. Jeżeli już base to lepiej używać vapply
x <- list("a", "b", "c", "name" = list("10"))
purr::map(x,3) - daje "c"
purr::map(x, "name") - daje list("10")

x <- c(1:3)
purrr::walk - wykonaj każdą funkcję ale niczego nie zwracaj












