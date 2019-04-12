#데이터 프레임 만들기

#1.변수만들기
english <-c(90,80,60,70)
english

math<-c(50,60,100,20)
math

#2.데이터 프레임 만들기
df_midterm<-data.frame(english,math)
df_midterm

class<-c(1,1,2,2)
class

df_midterm<-data.frame(english,math,class)
df_midterm

#분석하기 ($기호는 데이터 프레임 안에 있는 변수를 지정해준다)
mean(df_midterm$english)
mean(df_midterm$math)

#데이터 프레임 한번에 만들기
df_midterm <-data.frame(english =c(90,80,60,70),math=c(50,60,100,20),class=c(1,1,2,2))
df_midterm

#혼자서 해보기
#Q1 data.frame()과 c()를 조합해 표의 내용을 프레임으로 만들어 출력해보세요
df_fruit<-data.frame(제품=c("사과","딸기","수박"),가격=c(1800,1500,3000),판매량=c(24,38,13))
df_fruit

#Q2 앞에서 만든 데이터 프레임을 이용해 과일 가격 평균 판매량 평균을 구해 보세요
mean(df_fruit$가격)
mean(df_fruit$판매량)

#외부 데이터 가져오기 - readl 패키지 사용
install.packages("readxl")
library(readxl)

#외부 엑셀파일을 가져오는 방법 (read_excel()을 변수에 저장)
df_exam<-read_excel("excel_exam.xlsx")
df_exam

#분석하기
mean(df_exam$english)
mean(df_exam$science)
