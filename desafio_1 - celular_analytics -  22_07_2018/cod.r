# Esse arquivo foi gerado em resposta ao desafio do theRdojo.com 


library(ggplot2)

# Função que decodifica os codigo a partir de  dicionários 

decodeFunc <- function(cod,codDict){                                                                                          
	codDict[[cod]]	
}

# Função que decodifica os codigo a partir de dataframes 

decodeFuncdf <- function(cod1,cod2,df){                                                                                          
        df[strtoi(cod1),paste('X',cod2,sep='')]  
}


# Numeros do grupo

numbs = c('+55 61 8555-****','+55 19 98166-****','+55 61 8309-****','+55 61 9331-****','+55 61 9651-****','+55 61 9106-****','+55 61 9909-****','+55 61 9912-****','+55 61 9295-****','+55 61 9134-****','+55 61 9608-****','+55 61 8667-****','+55 61 8401-****','+55 61 9800-****','+55 61 9929-****','+55 61 8108-****','+55 61 8143-****','+55 37 8822-****','+244 922 30-****','+34 618 79-****','+55 11 94106-****','+55 11 94486-****','+55 11 94569-****','+55 11 94767-****','+55 11 94864-****','+55 11 95234-****','+55 11 95249-****','+55 11 95460-****','+55 11 95863-****','+55 11 95943-****','+55 11 95970-****','+55 11 96649-****','+55 11 97170-****','+55 11 97648-****','+55 11 97669-****','+55 11 97698-****','+55 11 97959-****','+55 11 97979-****','+55 11 98015-****','+55 11 98104-****','+55 11 98184-****','+55 11 98369-****','+55 11 98688-****','+55 11 98764-****','+55 11 99297-****','+55 11 99378-****','+55 11 99885-****','+55 11 99907-****','+55 12 98156-****','+55 12 98255-****','+55 12 99118-****','+55 12 99738-****','+55 13 98843-****','+55 13 99716-****','+55 14 99775-****','+55 15 98102-****','+55 15 99621-****','+55 16 99252-****','+55 19 99540-****','+55 21 96933-****','+55 21 96947-****','+55 21 97017-****','+55 21 97927-****','+55 21 98103-****','+55 21 98105-****','+55 21 98113-****','+55 21 98164-****','+55 21 98171-****','+55 21 98413-****','+55 21 98623-****','+55 21 98853-****','+55 21 99151-****','+55 21 99209-****','+55 21 99399-****','+55 21 99709-****','+55 24 98803-****','+55 31 9185-****','+55 43 9840-****','+55 47 9194-****','+55 48 9981-****','+55 51 8145-****','+55 51 9548-****','+55 54 8403-****','+55 61 8158-****','+55 61 8166-****','+55 61 8294-****','+55 61 8352-****','+55 61 8402-****','+55 61 8421-****','+55 61 8598-****','+55 61 9223-****','+55 61 9569-****','+55 61 9879-****','+55 62 8456-****','+55 62 9363-****','+55 63 9252-****','+55 65 9667-****','+55 65 9671-****','+55 71 9154-****','+55 74 8134-****','+55 79 9112-****','+55 82 9648-****','+55 85 9613-****','+55 88 9944-****','+55 88 9967-****','+55 91 8484-****','+55 94 9297-****','+55 98 8934-****','+55 61 8196-****')

## Criando dicionários

# Dicionarios de codigo internacionais:
int_call_cods <- c('Afghanistan','Albania','Algeria','American Samoa','Andorra','Angola','Anguilla','Antigua and Barbuda','Argentina','Armenia','Aruba','Australia','Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bermuda','Bhutan','Bolivia','Bosnia and Herzegovina','Botswana','Brazil','Brunei Darussalam','Bulgaria','Burkina Faso','Burundi','Cambodia','Cameroon','Canada','Cape Verde','Cayman Islands','Central African Republic','Chad','Chile','China','Christmas Island','Cocos (Keeling) Islands','Colombia','Comoros','Congo (Brazzaville)','Congo (Kinshasa)','Cook Islands','Costa Rica','Côte DIvoire (Ivory Coast)','Croatia (Hrvatska)','Cuba','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia','Falkland Islands (Malvinas)','Faroe Islands','Fiji','Finland','France','French Guiana','French Polynesia','Gabon','Gambia','Georgia','Germany','Ghana','Gibraltar','Greece','Greenland','Grenada','Guadeloupe','Guam','Guatemala','Guinea','Guinea-Bissau','Guyana','Haiti','Holy See (Vatican City State)','Honduras','Hong Kong, SAR','Hungary','Iceland','India','Indonesia','Iran, Islamic Republic of','Iraq','Ireland','Israel','Italy','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','Korea, Democratic Peoples Republic of(North)','Korea, Republic of (South)','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Liechtenstein','Lithuania','Luxembourg','Macao (SAR China)','Macedonia','Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Martinique','Mauritania','Mauritius','Mayotte','Mexico','Micronesia, Federated States of','Moldova','Monaco','Mongolia','Montenegro','Montserrat','Morocco and Western Sahara','Mozambique','Myanmar','Namibia','Nauru','Nepal','Netherlands','Netherlands Antilles','New Caledonia','New Zealand','Nicaragua','Niger','Nigeria','Niue','Norfolk Island','Northern Mariana Islands','Norway','Oman','Pakistan','Palau','Palestinian Territory, Occupied','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Pitcairn','Poland','Portugal','Puerto Rico','Qatar','Réunion and Mayotte','Romania','Russian Federation','Rwanda','Saint Helena and also Tristan Da Cunha','Saint Kitts and Nevis','Saint Lucia','Saint Pierre and Miquelon','Saint Vincent and the Grenadines','Samoa','San Marino','São Tomé and Principe','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','Spain','Sri Lanka','Sudan','Suriname','Svalbard and Jan Mayen Islands','Swaziland','Sweden','Switzerland','Syrian Arab Republic (Syria)','Taiwan, Republic of China','Tajikistan','Tanzania, United Republic of','Thailand','Timor-Leste','Togo','Tokelau','Tonga','Trinidad and Tobago','Tunisia','Turkey','Turkmenistan','Turks and Caicos Islands','Tuvalu','Uganda','Ukraine','United Arab Emirates','United Kingdom','United States of America','Uruguay','Uzbekistan','Vanuatu','Venezuela (Bolivarian Republic of)','Viet Nam','Virgin Islands, British','Virgin Islands, US','Wallis and Futuna Islands','Yemen','Zambia','Zimbabwe')
names(int_call_cods) = c('93','355','213','1','376','244','1','1','54','374','297','61','43','994','1','973','880','1','375','32','501','229','1','975','591','387','267','55','673','359','226','257','855','237','1','238','1','236','235','56','86','61','61','57','269','242','243','682','506','225','385','53','357','420','45','253','1','593','20','503','240','291','372','251','500','298','679','358','33','594','689','241','220','995','49','233','350','30','299','1','590','1','502','224','245','592','509','379','504','852','36','354','91','62','98','964','353','972','39','1','81','962','7','254','686','850','82','965','996','856','371','961','266','231','218','423','370','352','853','389','261','265','60','960','223','356','692','596','222','230','262','52','691','373','377','976','382','1','212','258','95','264','674','977','31','599','687','64','505','227','234','683','672','1','47','968','92','680','970','507','675','595','51','63','870','48','351','1','974','262','40','7','250','290','1','1','508','1','685','378','239','966','221','381','248','232','65','421','386','677','252','27','34','94','249','597','47','268','46','41','963','886','992','255','66','670','228','690','676','1','216','90','993','1','688','256','380','971','44','1','598','998','678','58','84','1','1','681','967','260','263')

# Dicionario de codigos nacionais:
nac_call_cods <- c("São Paulo - SP", "São José dos Campos - SP", "Santos - SP", "Bauru - SP", "Sorocaba - SP", "Ribeirão Preto - SP", "São José do Rio Preto - SP", "Presidente Prudente - SP", "Campinas - SP", "Rio de Janeiro - RJ", "Campos dos Goytacazes - RJ", "Volta Redonda - RJ", "Vila Velha/Vitória - ES", "Cachoeiro de Itapemirim - ES", "Belo Horizonte - MG", "Juiz de Fora - MG", "Governador Valadares - MG", "Uberlândia - MG", "Poços de Caldas - MG", "Divinópolis - MG", "Montes Claros - MG", "Curitiba - PR", "Ponta Grossa - PR", "Londrina - PR", "Maringá - PR", "Foz do Iguaçú - PR", "Francisco Beltrão/Pato Branco - PR", "Joinville - SC", "Florianópolis - SC", "Chapecó - SC", "Porto Alegre - RS", "Pelotas - RS", "Caxias do Sul - RS", "Santa Maria - RS", "Brasília - DF", "Goiânia - GO", "Palmas - TO", "Rio Verde - GO", "Cuiabá - MT", "Rondonópolis - MT", "Campo Grande - MS", "Rio Branco - AC", "Porto Velho - RO", "Salvador - BA", "Ilhéus - BA", "Juazeiro - BA", "Feira de Santana - BA", "Barreiras - BA", "Aracaju - SE", "Recife - PE", "Maceió - AL", "João Pessoa - PB", "Natal - RN", "Fortaleza - CE", "Teresina - PI", "Petrolina - PE", "Juazeiro do Norte - CE", "Picos - PI", "Belém - PA", "Manaus - AM", "Santarém - PA", "Marabá - PA", "Boa Vista - RR", "Macapá - AP", "Coari - AM", "São Luís - MA", "Imperatriz - MA")

names(nac_call_cods) <- c("11", "12", "13", "14", "15", "16", "17", "18", "19", "21", "22", "24", "27", "28", "31", "32", "33", "34", "35", "37", "38", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "53", "54", "55", "61", "62", "63", "64", "65", "66", "67", "68", "69", "71", "73", "74", "75", "77", "79", "81", "82", "83", "84", "85", "86", "87", "88", "89", "91", "92", "93", "94", "95", "96", "97", "98", "99")


# Dicionario de Operadores:
# arquivo csv

#### INICIO ####

## Analise dos Paises:

# Limpando as strings para ficar so com o cod internacional (regex):
numbs_int_cods_plus =gsub(" [0-9]{2,3}.*", "", numbs) 

# retirnando o "+" que antecede o codigo:
numbs_int_cods =gsub("\\+", "", numbs_int_cods_plus) 

# Criando a Lista de paises
countryList = lapply(numbs_int_cods, decodeFunc, codDict=int_call_cods)

# Criando dataFrame dos Paises
df_c = as.data.frame(do.call(rbind,countryList)) 

# Gerando o histograma:
library(ggplot2)
ggp <- ggplot(df_c,aes(x=df_c$V1))  

# counts
ggp + geom_bar(fill="lightgreen")


## Analise dos Estados 

# Selecionando só os numeros brasileiros (regex):
numbs_br =grep("+55", numbs, value = TRUE) 

# Limpando as string para ficar so com o cod DDD:
numbs_br_noIntCod = gsub("\\+[0-9]{2} ", "", numbs_br) 
numbs_br_DDD = gsub(" .*", "", numbs_br_noIntCod) 

# Criando a Lista de Estados
statesList = lapply(numbs_br_DDD, decodeFunc, codDict=nac_call_cods)

# Criando dataFrame dos Paises
df_s = as.data.frame(do.call(rbind,statesList)) 

# Gerando o histograma:
library(ggplot2)
ggp <- ggplot(df_s,aes(x=df_s$V1))  

# counts
ggp + geom_bar(fill="lightgreen")+ theme(axis.text.x=element_text(angle = -90, hjust = 0)) 


## Analisando as Operadoras:

# Importando dados da tabela csv construida para identificar as operadoras:
df_operadoras = read.csv("tabela_operadoras.csv", row.names = 1, header= TRUE)

# Limpando dataframe de ""
df_operadoras[df_operadoras==""]<-NA

# Selecionando só os numeros brasileiros (regex):
numbs_br =grep("+55", numbs, value = TRUE) 

# Limpando as string para ficar so com o cod DDD:
numbs_br_noIntCod = gsub("\\+[0-9]{2} ", "", numbs_br) 
numbs_br_DDD = gsub(" .*", "", numbs_br_noIntCod) 

# Limpando as strings para ficar só com os primeiros digidos:
numbs_sem_pref = gsub("\\+[0-9]{2} [0-9]{2} ", "", numbs_br)
numbs_digitos_iniciais = gsub("[0-9]{2}-\\*{4}", "", numbs_sem_pref)
    # Tratando o caso de numeros com o digito extra (9): 
numbs_cod_operadoras =  gsub("9([0-9]{2})", "\\1", numbs_digitos_iniciais) 

# Criando a Lista de Operadoras
operadorasList = c()
ddd_opr_merge =do.call(cbind, c(mget(c("numbs_br_DDD", "numbs_cod_operadoras"))))
for(i in 1:nrow(ddd_opr_merge)) {
    row <- ddd_opr_merge[i,]
    DDD = row["numbs_br_DDD"]
    cod_opr = row["numbs_cod_operadoras"]
    column_name = paste("X", cod_opr, sep = "")
    operadorasList = append(operadorasList,as.vector(df_operadoras[DDD,column_name]))
}

# Criando dataFrame das operadoras
df_o = as.data.frame(do.call(rbind,as.list(operadorasList)))

####  Gerando o histograma:
barplot((table(df_o$V1)))
