library(rvest)
library(tidyr)
library(dplyr)

statec <- read_html("http://www.statistiques.public.lu/stat/TableViewer/tableViewHTML.aspx?ReportId=12950&IF_Language=fra&MainTheme=2&FldrName=3&RFPath=91")

statec %>%
  html_nodes(".b2020-datatable") %>% .[[1]] %>% html_table(fill = TRUE) -> data
