rline = readLines("/mnt/data/datfile")
dir.create("/mnt/data/results_R/")
utfile = "/mnt/data/results_R/result"
system(paste("echo VERSION: $VERSION >", utfile))
write(paste("The data has", nchar(rline), "Characters."), file=utfile, append=TRUE)
write(date(), file=utfile, append=TRUE)
write(paste("R package stargazer", packageVersion("stargazer"), "is installed."), file=utfile, append=TRUE)

