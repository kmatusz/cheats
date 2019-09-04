#### Names and values

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
