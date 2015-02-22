corr <- function(directory="specdata",threshold=0){
    getcomplete(threshold=threshold)
        baseDir <- "/Users/cfelmeister/datasciencecoursera/"
        #empty data frame for answer
        answerFrame <- data.frame(Date=character(),sulfate=numeric(),nitrate=numeric(),ID=numeric())
        ansF <- data.frame(id=numeric(),nobs=numeric())
        returnV <- NULL
        for(i in 1:332){
                f <- padZeros(i,3)
                fName <- paste(baseDir,directory,"/",f,".csv",sep="")
                thisReturn = read.csv(fName,header=TRUE);
                thisFrame <- thisReturn[complete.cases(thisReturn),]
                if (nrow(thisFrame) > threshold){
                       crr<-cor(thisFrame$nitrate,thisFrame$sulfate) 
                       returnV <- c(returnV,crr)
                }
        }
       returnV
        
}