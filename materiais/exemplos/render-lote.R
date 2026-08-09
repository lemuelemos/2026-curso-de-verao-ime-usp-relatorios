# Gera uma versão de relatorio-parametrizado.qmd para cada região do Brasil.
# Rode a partir da raiz do projeto:
#   Rscript materiais/exemplos/render-lote.R

regioes <- c("Norte", "Nordeste", "Centro-Oeste", "Sudeste", "Sul")

purrr::walk(regioes, function(regiao_atual) {
  slug <- tolower(gsub("[^A-Za-z]+", "-", regiao_atual))

  quarto::quarto_render(
    input = "materiais/exemplos/relatorio-parametrizado.qmd",
    execute_params = list(regiao = regiao_atual),
    output_file = paste0("relatorio-", slug, ".html")
  )
})
