
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
  
  print(c(state, outcome)) #this is just test output
  
  ## Return hospital name in that state with lowest 30-day death rate
  
  
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
