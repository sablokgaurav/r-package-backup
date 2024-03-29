# r-package-backup
r functions for the r package customization so that it will be easier and it returns a character array and also you can change to vector if you want and scalable. Why i wrote this code as i read this post on the R blogger and you can find the post here [RPost](https://www.r-bloggers.com/2017/07/quick-way-of-installing-all-your-old-r-libraries-on-a-new-device/) and you will find it longer way and you cant even find the vector and search the space for the install. I recently changed my system and so i coded a iterative way to get a vector and then use that for the installation. 

```
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
```
Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
