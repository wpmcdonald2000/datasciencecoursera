rankhospital <- function(state, outcome, num = "best") {
        ## Read outcome data
        data <- read.csv("outcome-of-care-measures.csv")
        data <- data[,c(2,7,11,17,23)]
        names(data) <- c('Hospital','State','heart attack','heart failure','pneumonia')
        
        ## Check that state and outcome are valid
        ## develop list of states and outcomes
        valid_states <- unique(data[,2])
        valid_outcomes < c('heart attack','heart failure','pneumonia')
        
        ## check the validity of State and Outcome entries
        if (!(state %in% valid_states)){
                stop('invalid state')
        }
        if (!(outcome %in% valid_outcomes)){
                stop('invalid outcome')
        }
        ## subset data by state
        df_state <- df[df$State == state, ]
        ## reset columns as numeric
        df_state[, c(3,4,5)] <- sapply(df_state[, c(3,4,5)], as.numeric)
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
        if (outcome == 'heart attack'){
                ## order state dataset by 30 day heart attack returns
                ordered_state <- df_state[order(df_state[,3]),]
                rank <- df_state[which.min(df_state[, 3]), "Hospital"]
        }
        
        

}
