#GWAS Practice 
#Cài d???t gói "GAPIT3" trên ph???n m???m R 4.1.1
install.packages("devtools")
devtools::install_github("jiabowang/GAPIT3",force=TRUE)
library(GAPIT3)
#Phân tích GWAS b???ng mô hình tuy???n tính h???n h???p (MLM)
myGAPIT_MLM <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="MLM",
  PCA.total=5,
  file.output=T)
#Phân tích GWAS b???ng mô hình tuy???n tính thu???ng (GLM)
myGAPIT_GLM <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="GLM",
  PCA.total=5,
  file.output=T) 
#Phân tích GWAS b???ng mô hình Fixed and random model Circulating Probability Unification (FarmCPU)
myGAPIT_FarmCPU <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="FarmCPU",
  PCA.total=5,
  file.output=T)
