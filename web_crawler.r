#import necessary library
library(RCurl)
library(XML)

#create header(dummy browser)
myHttpheader <- c(
"User-Agent" = "Mozilla/5.0 (X11; Linux x86_64) ",
"Accept" = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
"Accept-Language" = "en-us",
"Connection" = "keep-alive",
"Accept-Charset" = "GB2312,utf-8;q=0.7,*; q=0.7"
)

#declare the URL and load the webpage locally
url <- "http://www.imdb.com/chart/top"
webpage <- getURL(url, httpheader = myHttpheader)

#parse the webpage
pagetree <- htmlTreeParse(webpage)
#parse a Chinese webpage
#pagetree <- htmlTreeParse(webpage, encoding = "GB2312", error = function(...){}, useInternalNodes = TRUE, trim = TRUE)
title <- getNodeSet(pagetree, "//td[@class='titleColumn']/a/text()")
info <- getNodeSet(pagetree, "//td[@class='posterColumn']/text()")
print(title)
foo <- sapply(node, xmlValue)
print(info)