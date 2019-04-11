#데이터 프레임 만들기
english <-c(90,80,60,70)
english

math <-c(50,60,100,20)
math

df_midterm <-data.frame(english,math)
#데이터 프레임 : 변수를 만들고 data.frame(x,y)
df_midterm

class <-c(1,1,2,2)
class

df_midterm <-data.frame(english,math,class)
df_midterm

mean(df_midterm$english)
# $기호는 데이터 프레임 안에 있는 변수를 지정할 때 사용
mean(df_midterm$math)

#데이터 프레임 한번에 만들기

df_midterm <-data.frame(english = c(90,80,60,70),
                        math = c(50,60,100,20),
                        class = c(1,1,2,2))

#혼자서 해보기
df_Prac <-data.frame(제품=c("사과","딸기","수박"), 가격=c(1800,1500,3000),판매량=c(24,38,13))
df_Prac

install.packages("readxl")
library(readxl)

df_exam <-read_excel("excel_exam.xlsx")
