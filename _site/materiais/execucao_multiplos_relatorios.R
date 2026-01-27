especies <- unique(penguins$species)

for (especie in especies) {
  print(especie)
  quarto::quarto_render(
    "materiais/aula_relatorios_reproduciveis.qmd",
    execute_params = list(
      species = especie,
      titulo = "Teste 2"
    ),
    output_file = paste0("Relatorio Penguis ", especie, ".pdf"),
    quiet = T
  )
}

purrr::walk(especies, \(especie) {
  print(especie)
  quarto::quarto_render(
    "materiais/aula_relatorios_reproduciveis.qmd",
    execute_params = list(
      species = especie
    ),
    output_file = paste0("Relatorio Penguis ", especie, ".pdf")
  )
})
