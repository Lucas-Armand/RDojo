# Esse arquivo foi gerado em resposta ao desafio do theRdojo.com 
library(stringr)


zippedDataConcatenate <- function(zipName){
  # Essa funcao acessa um arquivo zip povoado de arquivos csv(s) referentes a 
  # uma mesma base de dados. Dai, constroi uma nova base "concatenando" todas
  # as bases fragmentadas. Resulta em um arquivo csv saida ("db_completo.csv")
  
  # Pegando a lista de arquivos zipados:
  fileList = unzip(zipName, files = NULL, list = TRUE)
  
  # Loop em todos os arquivos dentro do zip:
  for(fileName in fileList$Name){
    
    # Acessando o final do nome de cada arquivo:
    nameEnd = str_sub(fileName,-4,-1)
    
    # Se o arquivo for do tipo ".csv" aplicaremos a logica a seguir:
    if(nameEnd == ".csv"){
      
      # Se o arquivo data ainda nao foi defino, o definiremos:
      if(!exists('Data')){
        Data <- read.table(unz("specdata.zip", fileName), header=T, quote='\"',sep=',')
        
        # Caso ele já existe, então adicionaremos o novo fragmento a ele:
      } else {
        Data <- rbind(Data,read.table(unz("specdata.zip", fileName), header=T, quote='\"',sep=','))
        
        # Um feedback para acalmar a anciedade da espera (o script pode demorar bastante)
        print(fileName)
        
      }
    } 
  }
  # Nesse ponto "data" acumulou todo o banco de dados
  # Por fim iremos exportar data em um arquivo csv
  write.csv(Data, file = "db_completo.csv", row.names=FALSE)
}


unknowDataExploration <- function(inputName){
  Data <- read.table(inputName, header=T, quote='\"',sep=',')
  ids = unique(Data$ID)
  SulfateNAsPercent = c()
  NitrateNAsPercent = c()
  TotalNAsPercent = c()
  for (id in ids){
    data = Data[Data$ID == id,]
    n = nrow(data)
    sulfateNAs = sum(is.na(data$sulfate))
    nitrateNAs = sum(is.na(data$nitrate))
    sulfateNAsPercent = sulfateNAs/n
    nitrateNAsPercent = nitrateNAs/n
    totalNAsPercent = (nitrateNAsPercent+sulfateNAsPercent)/2
    SulfateNAsPercent = cbind(SulfateNAsPercent,c(sulfateNAsPercent))
    NitrateNAsPercent = cbind(NitrateNAsPercent,c(nitrateNAsPercent))
    TotalNAsPercent = cbind(TotalNAsPercent,c(totalNAsPercent))
  }
  SulfateNAsPercent = as.vector(SulfateNAsPercent)
  NitrateNAsPercent = as.vector(NitrateNAsPercent)
  TotalNAsPercent = as.vector(TotalNAsPercent)
  NAsData <- data.frame(ids,SulfateNAsPercent,NitrateNAsPercent,TotalNAsPercent)
  return(NAsData)
}
zippedDataConcatenate("specdata.zip")
unknowDataExploration("db_completo.csv")
