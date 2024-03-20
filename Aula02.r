library(tibble)

df1 <- tibble(matricula = c(256, 487, 965, 125, 458, 874, 963),
    nome = c("João", "Vanessa", "Thiago", "Luana", "Gisele", "Pedro", "André"),
    curso = c("Mat", "Mat", "Est", "Est", "Est", "'Mat", "Est"),
    prova1 = c(80, 75, 95, 70, 45, 55, 30),
    prova2 = c(90 , 75, 80, 85, 50, 75, NA),
    prova3 = c(80, 75, 75, 50, NA, 90, 30),
    faltas = c(4, 4, 0, 8, 16, 0, 20))

df1



install.package("dplyr")
install.package("tidyselect")

library(tibble)
library(dplyr)

View(df1)
df1_arranged <- df1 %>%
arrange(matricula)
df1_arranged



df1[2, "nome"]
df1 %>% arrange(curso == "Est")
df1 %>% filter (curso == "Est")



install.packages("Stringr")
library(Stringr)

df1 %>% rename("mat" = "matricula", "fl" = "faltas")
names(df1) <- names(df1) %>% str_to_upper()
novo_nomes <- substr(names(df1), start = 1, stop = 3)


df1 %>% rename("mat" = "matricula")
df1 %>% rename("p1" = "faltas")
df1_renamed <- df1 %>% rename("f1" = "faltas", "p1" = "provas1", "p2" = "provas2")
df1_renamed

df1$media <- (df$p1 + df$p2 + df$p3) / 3

df1_renamed$media <- (df1_renamed + df1_renamed$p2 + df1_renamed$p3) / 3
df1_renamed



df <- data.frame(nome = c("João", "Maria", "Pedro"),
    idade = c(25, 30, 28), altura = c(1.75, 1.65, 1.80)) 
df

df$IMC <- df$altura^2/df$idade
df

df <- subset(df, select = -nome)
