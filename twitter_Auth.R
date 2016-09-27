install.packages("twittR")
library(twitteR)


API_key <- "ScCg5tg3ZkB2HLGuMnOrDIjzJ"
API_secret <- "DvDsIjqExXR2BfPCJx6LeQNL41Gm6aEyNJIxmaRigxXlsxTMXI"
Access_token <- "143606490-xC6B4JunOZ4WZbPHF3mIZzwQHKMONyCrYu3PIvNO"
Access_token_secret <- "DYdTs9UqSXUE6CG9TOdVUkgJNgvrkBzFRpyftk0BAoFKL"

setup_twitter_oauth(API_key, API_secret, Access_token, Access_token_secret)

tuits_semanai <- searchTwitter("#semanai", n = 50)

tuits_hijos <- searchTwitter("#notemetasconmishijos", until = "2016-09-25", since = "2016-09-24")

tuits_tacos <- searchTwitter("#tacosorinoco")

df_tuists_tacos <- twListToDF(tuits_tacos)
