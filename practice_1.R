#변수 만들기
a<-1
a

b<-2
b

c<-3
c

d<-3.5
d

#변수를 조합해 연산하기
a+b
a+b+c
4/b
5*b

#여러 값으로 구성된 변수 만들기 (c()함수 이용하기)
var1 <-c(1,2,5,7,8)
var1

#콜론(:)을 이용해 시작 숫자와 마지막 숫자를 입력하면 1씩 증가함
var2 <-c(1:5)
var2

#seq()함수를 이용해 연속적인 값으로 변수 생성
var3 <-seq(1,5)
var3

#by파라미터를 이용해 일정한 간격을 두고 연속된 숫자변수를 만듦
var4<-seq(1,10,by=2)
var4

var5 <-seq(1,10,by=3)
var5

#여러 값으로 구성된 변수로도 연산할 수 있다
var1
var1+2

var1
var2
var1+var2

#문자로 된 변수 만들기
str1 <-"a"
str1

str2<-"text"
str2

str3<-"Hello world!"
str3

#문자로 된 변수도 c()함수를 이용하면 여러개의 문자로 구성 가능
str5 <-c("hello","world","is","good")
str5

#숫자를 다루는 함수 이용하기 (평균을 구하는 mean함수)
x <-c(1,2,3)
x

mean(x)

#숫자의 최대값 최소값을 구하는 max , min함수
max(x)
min(x)

#문자를 다루는 함수 이용하기 (paste함수, collapse 파라미터)
str5
paste(str5,collapse=",") 
#4개의 단어가 쉼표로 구분되어 하나로 합쳐진 모습
paste(str5,collapse=" ")
#4개의 단어가 띄어쓰기로 구분되어 하나로 합쳐진 모습
#함수의 옵션을 설정하는 명령어를 "파라미터","매개변수"라고 함

#새 변수에 함수를 적용해 저장하기
x_mean <-mean(x)
x_mean

str5_paste<-paste(str5,collapse=" ")
str5_paste

#패키지 설치하기 (install.packages("패키지명"))
#패키지 로드하기 library(패키지명)

library(ggplot2)
x<-c("a","a","b","c")
x

#빈도막대그래프 출력
qplot(x)

#ggplot2의 mpg데이터로 그래프 만들기
#ggplot2에는 mpg데이터가 있다.

qplot(data=mpg,x=hwy)
qplot(data=mpg,x=cty)
qplot(data=mpg,x=drv,y=hwy)
qplot(data=mpg,x=drv,y=hwy,geom="boxplot",colour=drv)

#혼자서 해보기

#Q1 시험 점수 변수 만들고 출력하기
stu<-c(80,60,70,50,90)
stu
#Q2 전체 평균 구하기
mean(stu)

#Q3 전체 평균 변수 만들고 출력하기
stu_mean <-mean(stu)
stu_mean