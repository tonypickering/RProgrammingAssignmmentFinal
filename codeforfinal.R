
best <- function(state, outcome) { 
  
  ## Read outcome data
  myOutcomeData <- read.csv("outcome-of-care-measures.csv")
  
  
  ## Check that state and outcome are valid
    
    if (is.element(state, myOutcomeData$State) == FALSE) {
          stop("invalid state")
    }
  
    validoutcome <-  c("heart attack", "heart failure", "pneumonia")
    
    if (is.element(outcome,  validoutcome) == FALSE)  {
          stop("invalid outcome")
    }
  
  # print(c(state, outcome)) #this is just test output
  
  vars2keep<-c("State","Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack",
               "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure","Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia")
  
  minimyoutcome <- myOutcomeData[vars2keep]
  minimystate <-filter(minimyoutcome,State==state)
  
  minimyoutcome2 <- arrange(minimystate,Hospital.Name)
  
  minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(as.character(minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack))
  minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(as.character(minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure))
  minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(as.character(minimyoutcome2$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia))
  
  ## Return hospital name in that state with lowest 30-day death rate
     if (outcome == "heart attack") {
            print(c("finding best heart attack rate for ",state))
            minimyoutcome3 <- arrange(minimyoutcome2,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
            
     }
     else if(outcome == "heart failure") {
            print(c("finding best heart failure rate for ",state))
            minimyoutcome3 <- arrange(minimyoutcome2,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
            
     }
     else if(outcome == "pneumonia") {
            print(c("finding best heart pneumonia rate for ",state)) 
            minimyoutcome3 <- arrange(minimyoutcome2,Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
            
     }
   
  topdog <- minimyoutcome3[1,]$Hospital.Name
  print(as.character(topdog))
  
}
  



rankhospital <- function(state, outcome, num = "best") {
  
  ## Read outcome data
  
  
  
  
  ## Check that state and outcome are valid
  
  
  
  
  ## Return hospital name in that state with the given rank ## 30-day death rate
  
  
  
  
}



rankall <- function(outcome, num = "best") {
  
  ## Read outcome data
  
  
  
  
  ## Check that state and outcome are valid
  
  
  
  
  ## For each state, find the hospital of the given rank
  ## Return a data frame with the hospital names and the ## (abbreviated) state name
  
  
  
  
}
