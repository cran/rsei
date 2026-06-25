## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(rsei)
# 
# # Guarde a sigla e a chave fora do código (keyring); faça isso uma vez por máquina.
# store_sei_credentials(
#   service_name = "SEI_WS",
#   username     = "MEU_SISTEMA",        # sigla do sistema (SiglaSistema)
#   password     = "SUA_CHAVE_DE_ACESSO" # chave de acesso (IdentificacaoServico)
# )
# 
# # Recupere as credenciais guardadas quando precisar montar a configuração.
# creds <- get_sei_credentials("SEI_WS")
# 
# cfg <- sei_config(
#   sei_url               = "https://sei.exemplo.gov.br/sei/ws/SeiWS.php",
#   sigla_sistema         = creds$username,
#   identificacao_servico = creds$password
# )
# 
# # Teste rápido: uma listagem leve confirma sigla + chave + liberação de IP.
# listar_unidades(cfg)

