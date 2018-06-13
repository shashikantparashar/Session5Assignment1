##########################################################################################################################
# Session4Assignment1.R                   
# Shashikant Parashar
# Session:5, Assignment:1
##########################################################################################################################
#How many vowels are there in the names of USA States?
##########################################################################################################################
States <- rownames(USArrests)
stdf <- data.frame(State_Name = States,Vowels_in_State_Name=str_count(States,pattern ="[a,e,i,o,u,A,E,I,O,U]")
)
TotalVowels <- sum(stdf$Vowels_in_State_Name)
paste("Total vowels in all state names are:",TotalVowels)
#Visualization of the vowels distribution.
library(ggplot2)
ggplot(stdf, aes(stdf$Vowels_in_State_Name,stdf$State_Name))  + geom_point() 
