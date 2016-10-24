#!/usr/bin/env Rscript

queue_stats <- function(file, ...) {
    x <- scan(file, what = numeric(), sep = "\n")
    summary(x)

    hist(x)
    lines(density(x, bw = 0.1))
    rug(x)

    plot(ecdf(x), do.points=FALSE, verticals=TRUE)
}

files <- c("./density10.xy",
           "./density100.xy",
           "./density1000.xy",
           "./density10000.xy",
           "./density100000.xy")

lapply(files, queue_stats)
