rankhospital <- function(state, outcome, num = "best") {
        ## Read outcome data
        data=read.csv("outcome-of-care-measures.csv")
        
        
        ## Check that state and outcome are valid
        ## develop list of states and outcomes
        valid_states <- unique(df[,2])
        valid_outcomes < c('heart attack','heart failure','pneumonia')
        
        ## check the validity of State and Outcome entries
        if (!(state %in% valid_states)){
                stop('invalid state')
        }
        if (!(outcome %in% valid_outcomes)){
                stop('invalid outcome')
        }
        
        ## Return hospital name in that state with the given rank
        
        ## 30-day death rate

}
