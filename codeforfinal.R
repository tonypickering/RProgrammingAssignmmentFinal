
best <- function(state, outcome) { 
  
  ## Read outcome data
  myOutcomeData <- read.csv("outcome-of-care-measures.csv")
  
  ## Check that state and outcome are valid
  
  if (outcome=="heart attack") {
  
          print("heart attack")
  
          }
  else if (outcome=="heart failure") {
    
          print("heart failure")
  
          }
  else if (outcome=="pneumonia") {
  
          print("pneumonia")
          }
  else {print("invalid outcome")
          }
  
  
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
