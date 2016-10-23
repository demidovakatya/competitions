read.file <- function(filename) {
    df <- read.table(filename,
                     # header = T,
                     stringsAsFactors = F,
                     sep = ',')
    colnames(df) <- df[1,]
    df <- df[-1,]
    df
}


#---------------------------- Test
# read.file("data/phone_names_translation.csv")
