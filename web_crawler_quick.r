library(rvest)

web <- read_html("http://www.imdb.com/chart/top", encoding="UTF-8")
position <- web %>% html_nodes("td.postercolumn") %>% html_text()