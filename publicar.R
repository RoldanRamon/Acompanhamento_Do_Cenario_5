
library(rsconnect)
result <- rpubsUpload(title = "Acompanhamento do Cenário 5", contentFile = "18.Julho-Acompanhamento.html",originalDoc = "07.Julho-Acompanhamento.html")
browseURL(result$continueUrl)

