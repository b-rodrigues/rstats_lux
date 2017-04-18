library(rvest)
library(tidyr)
library(dplyr)

statec <- read_html("http://www.statistiques.public.lu/stat/TableViewer/tableView.aspx?ReportId=12950&IF_Language=fra&MainTheme=2&FldrName=3&RFPath=91")

statec %>%
  html_node(xpath = '//*[(@id = "DataTable")]')

statec %>%
  html_nodes(".TVDataTable") %>% .[[1]] %>% html_table(fill = TRUE)

%>% html_table(fill = TRUE)
