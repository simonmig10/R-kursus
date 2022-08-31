####### Solution set for exercises #########

## Step 1 For alle øvelserne "Load data"

library(readxl)
BNP <- read_excel("bnp.xlsx")
Export <- read_excel("Export.xlsx")
Import <- read_excel("Import.xlsx")
Inv <- read_excel("Inv.xlsx")
Employment <- read_excel("Employment.xlsx")


######### Øvelse 1 #########
 
## Step 2 Observer variablene 

Export$Year
Export$X


## Step 3. vis udviklingen i eksport


plot(BNP$Year,BNP$BNP,type="l",lty=1,lwd=1,xlab="År",
     ylab="BNP",col="black",main="...",sub="Kilde:...")


## Step 4: Tilføj beskrivelser

plot(BNP$Year,BNP$BNP,type="l",lty=1,lwd=1,xlab="År",ylab="BNP",col="black",
     main="BNP i Danmark 1966-2020",sub="Kilde:Statistikbanken.dk/NAN1")



########## Øvelse 2 ##########

## illustrere udviklingen i såvel eksport som import i samme figur

## Step 2 plot eksport 

plot(Export$Year,Export$X,type="l",lty=1,lwd=1,xlab="År",
     ylab="Export/Import",col="black",main="...",sub="Kilde:...")


## Step 3 Tilføj lines() funktionen 

lines(Import$Year, Import$Import,type="l",lty=1,lwd=1,col="red")


## Step 4 tilføj Dimensioner i plottet 

plot(Export$Year,Export$X,type="l",lty=1,lwd=1,xlab="År",
     ylab="BNP",col="black",main="...",sub="Kilde:...",ylim=c(100,1300))
lines(Import$Year,Import$Import,type="l",lty=1,lwd=1,col="red");grid()


## Step 5 Tilføj Legend 

plot(Export$Year,Export$X,type="l",lty=1,lwd=1,xlab="År",
     ylab="BNP",col="black",main="...",sub="Kilde:...",ylim=c(100,1300))

lines(Import$Year,Import$Import,type="l",lty=1,lwd=1,col="red")

legend(x=1970,y= 1200,legend=c("Export","Import"),lty=1,lwd=2,col=c("Black","Red"),bty="n")

grid()


########### Øvelse 3 ###########

## illustrere udviklingen i såvel investeringer som BNP i samme figur


plot(BNP$Year,BNP$BNP, ylim=c(600,2300), xlab="Year", ylab="BNP", 
     type="l",col="black", main="");axis(2, ylim=c(600,2300),col="black") 

par(new=TRUE)

plot(Inv$Year,Inv$I, ylab= "", xlab = "", ylim=c(100,600), 
     axes=FALSE, type="l", col="red");axis(4, ylim=c(100,600), col="red",col.axis="red")


########### Øvelse 4 ##########


## Undersøg grafisk nedenstående to påstande om den danske økonomi:

## 1. Realvæksten i den årlige BNP var ikke negativ i perioden 1982-2007

## Step 1 vi ser på grafen inden for intervalet 

plot(BNP$Year,BNP$BNP, xlim = c(1982,2007), xlab="Year", ylab="BNP", 
     type="l",col="black", main="");axis(2, ylim=c(600,2300),col="black")

## Step 2 Hvis vi vil være mere præcise kan vi kigge på 
##differencen mellem forrige og nuværrende periode i hvert år

plot(BNP$Year[-1],diff(BNP$BNP), xlim = c(1982,2007), xlab="Year", ylab="BNP", 
     type="l",col="black", main="");axis(2, ylim=c(600,2300),col="black") 


#2. Trods effekterne fra Corona, var beskæftigelsen højere i 2020 end i 2018

plot(Employment$Year,Employment$Emp,type="l",lty=1,lwd=1,xlab="År", 
     ylab="Employed in 1000",col="black",main="Employment",sub="Kilde:NAN1")
grid()


plot(Employment$Year,Employment$Emp,type="l",lty=1,lwd=1,xlab="År", xlim = c(2018,2020),
     ylab="Employed in 1000",col="black",main="Employment",sub="Kilde:NAN1")
grid()


