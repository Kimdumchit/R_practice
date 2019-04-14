#데이터 전처리 - 원하는 형태로 데이터 가공하기

#조건에 맞는 데이터만 추출하기
library(dplyr)
exam <-read.csv("csv_exam.csv")
exam

#exam에서 class가 1인 경우만 추출해 출력
exam %>% filter(class==1)

#exam에서 class가 2인 경우만 추출해 출력
exam %>% filter(class == 2)

#exam에서 class가 1이 아닌 경우만 추출해 출력
exam %>% filter(class !=1)

#초과,미만,이상,이하 조건 걸기(부등호)

exam %>% filter(math>50)
exam %>% filter(math <50)
exam %>% filter(english >=80)
exam %>% filter(english <=80)

#여러 조건을 충족하는 행 추출하기

exam %>% filter(class ==1 & math >=50)
exam %>% filter(class==2 & english >=80)

#여러 조건 중 하나 이상 충족하는 행 추출하기
exam %>% filter(math >=90 | english >=90)
exam %>% filter(class %in% c(1,3,5))

#추출한 행으로 데이터 만들기
class1 <-exam %>% filter(class==1)
class2 <-exam %>% filter(class==2)

mean(class1$math)
mean(class2$english)

#혼자서 해보기
#Q1

library(dplyr)
displ1 <-mpg %>% filter(displ <= 4)
displ2 <-mpg %>% filter(displ>=5)
mean(displ1$hwy)
mean(displ2$hwy)

#Q2
Audi <- mpg %>% filter(manufacturer == "audi")
Toyota <- mpg %>% filter(manufacturer =="toyota")
mean(Audi$cty)
mean(Toyota$cty)

#Q3
hwy_mean <-mpg %>% filter(manufacturer %in% c("chevrolet","ford","honda"))
mean(hwy_mean$hwy)

#필요한 변수만 추출하기 - select()
exam %>% select(math)
exam %>% select(english)
exam %>% select(class,math,english)

#필요하지 않은 변수 제외하기
exam %>% select(-math)
exam %>% select (-math, -english)

#filter와 select 함수 조합하기
exam %>% filter(class==1) %>% select(english)

#혼자서 해보기

#Q1
MPG <- mpg %>% select(class,cty)
MPG

#Q2
suv_cty <- mpg%>% filter(class == "suv")
compact_cty <-mpg%>% filter(class =="compact")
mean(suv_cty$cty)
mean(compact_cty$cty)

#순서대로 정렬하기 arrange()
exam %>% arrange(math)
exam %>% arrange(desc(math))

#혼자서 해보기
audi_hwy <-mpg%>%filter(manufacturer =="audi")
audi_hwy%>% arrange(hwy) %>%head(5)

#파생변수 추가하기
exam %>% mutate(total = math + english + science)
exam %>% mutate(total = math + english + science, mean=(math+english+science)/3)

#mutate에 ifelse 적용하기
exam %>% mutate (test = ifelse(science >=60,"pass","fail"))

#혼자서 해보기
#Q1
mpg_new <-mpg
mpg_new <- mpg_new%>%mutate(Plus=cty+hwy)

#Q2
mpg_new <- mpg_new%>%mutate (Mean = (cty+hwy)/2)

#Q3
mpg_new %>% arrange(Mean) %>%head(3)

#Q4
mpg <- mpg %>% mutate(Plus=cty+hwy,Mean=(cty+hwy)/2) %>%arrange(Mean) %>%head(3)
mpg

#집단별로 요약하기
exam %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math) , sum_math = sum(math) , mediam_math = median(math),n=n())

#혼자서 해보기

#Q1
mpg%>%group_by(class)%>%summarise(car_mean=mean(cty))
                                       