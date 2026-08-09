# Funções auxiliares do estudo de caso "perfil dos estados brasileiros".
# Usadas pela Aula 3, pela Aula 4 e por materiais/exemplos/relatorio-parametrizado.qmd.
# Entradas explícitas, saída previsível, sem depender de objetos globais.

#' Densidade demográfica (habitantes por km²)
calcular_densidade <- function(populacao, area_km2) {
  populacao / area_km2
}

#' Classifica um estado por porte populacional.
#' Categorias definidas para este curso (não é uma classificação oficial do IBGE).
classificar_porte <- function(populacao) {
  dplyr::case_when(
    populacao < 2e6 ~ "pequeno",
    populacao < 8e6 ~ "médio",
    TRUE ~ "grande"
  )
}
