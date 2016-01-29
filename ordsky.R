setwd("~/for_folk/rustadporten")
library(wordcloud)
library(extrafont)
loadfonts()

words <- "
LEKENDE
LÆRING  
GYLNE 
ØYEBLIKK
TILSTEDEVÆRENDE 
VOKSNE
BARN
Trygghet
Tilstedeværelse 
Engasjement
Lek
Læring
Vennskap 
Relasjoner 
Konfliktløsning
annerkjent
likestilt 
miljø
Samspill
spontanitet 
glede
humor
utfordringer
muligheter
mestring
prøve
feile
"

words <- unlist(str_split(words, "\n"))
words <- words[2:length(words)]
words <- str_to_lower(words)
words_w_freq <- table(sample(words, 200, replace = T))
words_w_freq <- as.data.frame(words_w_freq)
slice(words_w_freq, 2:nrow(words_w_freq))
wordcloud(words_w_freq$Var1, words_w_freq$Freq,
          colors = RColorBrewer::brewer.pal(name = "Dark2", 8),family = "sans")

extrafont::fonttable()
RColorBrewer::brewer.pal(name = "Set3", 12)
RColorBrewer::brewer.pal.info
