complete <- function(directory="specdata", id=1:332){
        baseDir <- "/Users/cfelmeister/datasciencecoursera/"
       #empty data frame for answer
        ansF <- data.frame(id=numeric(),nobs=numeric())
        for(i in id){
                f <- padZeros(i,3)
                fName <- paste(baseDir,directory,"/",f,".csv",sep="")
               thisReturn = read.csv(fName,header=TRUE);
                thisVe <- thisReturn[complete.cases(thisReturn),]
                r <- nrow(thisVe)
               ansF <- rbind(ansF,data.frame(id=i,nobs=r))
        }
       ansF
}

padZeros <- function(st,l){
        toString(st) 
        while (nchar(st) < l){
                st <- paste("0",st,sep="")
        }
        st        
}
        
