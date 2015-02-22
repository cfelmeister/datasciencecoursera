pollutantmean <- function(directory="specdata", pollutant="nitrate",id=1:332){
        answerV <- NULL
        baseDir <- "/Users/cfelmeister/datasciencecoursera/"
        for(i in id){
                f <- padZeros(i,3)
                fName <- paste(baseDir,directory,"/",f,".csv",sep="")
                thisReturn = read.csv(fName,header=TRUE);
                thisVe <- thisReturn[,pollutant]
                answerV <- c(answerV,thisVe)
        }
        mean(answerV,na.rm=TRUE)
}

padZeros <- function(st,l){
      toString(st) 
      while (nchar(st) < l){
              st <- paste("0",st,sep="")
      }
        st        
}