## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(rsei)
# 
# # O pacote serve a qualquer instalação do SEI: informe `sei_url` com o
# # endpoint do Web Service do seu servidor.
# cfg <- sei_config(
#   sei_url               = "https://sei.exemplo.gov.br/sei/ws/SeiWS.php",
#   sigla_sistema         = "MEU_SISTEMA",
#   identificacao_servico = Sys.getenv("RSEI_IDENTIFICACAO_SERVICO")
# )
# 
# # Alternativa: fixar como padrão da sessão (dispensa passar `config`)
# sei_set_default_config(
#   sei_url               = "https://sei.exemplo.gov.br/sei/ws/SeiWS.php",
#   sigla_sistema         = "MEU_SISTEMA",
#   identificacao_servico = Sys.getenv("RSEI_IDENTIFICACAO_SERVICO")
# )

## -----------------------------------------------------------------------------
# proc <- consultar_procedimento("0000000000.000001/2020-11", config = cfg)
# 
# proc$Especificacao
# proc$NivelAcessoGlobal            # recodificado: "público"/"restrito"/"sigiloso"
# proc$TipoProcedimento_Nome
# proc$UltimoAndamento_DataHora
# 
# # colunas-lista
# proc$Assuntos[[1]]
# proc$Interessados[[1]]
# proc$UnidadesProcedimentoAberto[[1]]

## -----------------------------------------------------------------------------
# doc <- consultar_procedimento("0000000000.000001/2020-11", config = cfg, raw = TRUE)

## -----------------------------------------------------------------------------
# protocolos <- c("0000000000.000001/2020-11", "0000000000.000003/2020-33")
# processos  <- consultar_procedimentos(protocolos, config = cfg)
# 
# processos[, c("protocolo", "Especificacao", "NivelAcessoGlobal", "erro")]
# 
# # processos que falharam
# subset(processos, !is.na(erro), c("protocolo", "erro"))

## -----------------------------------------------------------------------------
# doc <- consultar_documento("0000001", config = cfg)
# doc$Serie_Nome
# doc$Assinaturas[[1]]
# 
# pub <- consultar_publicacao(id_documento = "20000002", config = cfg)

## -----------------------------------------------------------------------------
# unidades <- listar_unidades(cfg)        # todas as unidades acessíveis ao serviço
# series   <- listar_series(cfg)
# tipos    <- listar_tipos_procedimento(cfg)
# estados  <- listar_estados(cfg)

## -----------------------------------------------------------------------------
# tryCatch(
#   consultar_bloco("999999", config = cfg),
#   error = function(e) conditionMessage(e)
# )
# #> "SOAP Fault em 'consultarBloco' [SOAP-ENV:Client]: Unidade ... não tem acesso ..."

## -----------------------------------------------------------------------------
# novo <- gerar_procedimento(
#   Procedimento(
#     IdTipoProcedimento = "100000368",
#     Especificacao      = "Processo de teste",
#     Assuntos           = list(Assunto(CodigoEstruturado = "00.01.01"))
#   ),
#   config = cfg
# )
# novo$ProcedimentoFormatado

