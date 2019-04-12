#05-1 데이터 파악하기

#head() - 데이터 앞부분 출력
#tail() - 데이터 뒷부분 출력
#View() - 뷰어 창에서 데이터 확인
#dim() - 데이터 차원 출력
#str() - 데이터 속성 출력
#summary() - 요약 통계량 출력

library(readxl)
exam <-read.csv("csv_exam.csv")
exam

#데이터 앞부분 출력하기
head(exam)

head(exam,10)

#데이터 뒷부분 출력하기
tail(exam)

tail(exam ,10)

#뷰어 창에서 데이터 확인하기
View(exam)

#데이터가 몇 행, 몇 열로 되어 있는지 확인하기
dim(exam)

#데이터의 속성 확인하기
str(exam)

#데이터의 요약 통계량 산출하기
summary(exam)

library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg

head(mpg)
tail(mpg)
View(mpg)

dim(mpg)
str(mpg)
summary(mpg)

#변수명 바꾸기
df_raw<-data.frame(var1 = c(1,2,1),var2 = c(2,3,2))
df_raw

install.packages("dplyr")
library(dplyr)

df_new<-df_raw
df_new

#변수명 바꾸기
df_new<-rename(df_new,v2=var2)
df_new

#혼자서 해보기

#Q1 ggplot2()패키지의 mpg 데이터를 사용 할 수 있도록 복사본을 만드세요
library(ggplot2)
mpg_new<-mpg

#Q2 복사본 데이터를 이용해 cty는 city로 hwy는 highway로 수정하세요
mpg_new<-rename(mpg_new,city=cty,highway=hwy)

#Q3 데이터 일부를 출력해 변수명이 바뀌었는지 확인해보세요
head(mpg_new)

#파생변수 만들기
df<-data.frame(var1 = c(4,3,8),var2=c(2,6,1))
df

df$var_sum <-df$var1+df$var2
df

df$var_mean <-(df$var1+df$var2)/2
df

#분석 도전!

#Q1 
library(ggplot2)
midwest_n <-data.frame(midwest)
midwest_n
head(midwest_n)
tail(midwest_n)
View(midwest_n)
dim(midwest_n)

#Q2
midwest_n<-rename(midwest_n,total=poptotal,asian=popasian)

head(midwest_n)

#Q3
midwest_n$back <-(midwest_n$asian/midwest_n$total)*100

hist(midwest_n$back)
head(midwest_n)

#Q4
mean(midwest_n$back)
midwest_n$mean <-ifelse(midwest_n$back >=mean(midwest_n$back),"large","small")
head(midwest_n)

#Q5
table(midwest_n$mean)
qplot(midwest_n$mean)
