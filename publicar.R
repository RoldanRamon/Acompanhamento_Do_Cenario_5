
library(rsconnect)
result <- rpubsUpload(title = "Acompanhamento do Cenário 5", contentFile = "4- relatorios/25.Julho-Acompanhamento.html",originalDoc = "07.Julho-Acompanhamento.html")
browseURL(result$continueUrl)
rm(list = ls())

