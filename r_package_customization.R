#!/usr/bin/R
package_repo_file <- function(list_file){
    # reading the package repository from the file and prepairing the
    # install character file 
    # Universität Potsdam, Germany
    # Author: Gaurav Sablok
    # date: 2024-1-19
    # making your system package administration easy
    package <- read.csv("list_file", stringsAsFactors = FALSE, sep = ",")
    package_data_frame <- as.data.frame(package[1])
    install <- character(length(package_data_frame))
    for (i in seq_along(package_data_frame)) {
        install[i] <- package_data_frame[i]
    }
    return(install)
}

#!/usr/bin/R
package_repo <- function(){
    # invoking this function as a direct install from the system
    # Universität Potsdam, Germany
    # Author: Gaurav Sablok
    # date: 2024-1-19
    # making your system package administration easy
    package <- as.data.frame((installed.packages()))[1]
    install <- character(length(package))
    for (i in seq_along(package)){
    install[i] <- package[i]
}
    return(install)
}

