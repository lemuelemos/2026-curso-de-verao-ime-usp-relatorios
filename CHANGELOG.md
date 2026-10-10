# Changelog

Todas as alterações relevantes deste projeto são documentadas neste arquivo.

## [Não publicado] — 2026-10-10

### Migração do ambiente R

- Substituído o gerenciamento de dependências baseado em `renv` pelo fluxo de projetos do `rig` 0.11.0.
- Fixado o R 4.5.2 como versão do projeto e como versão padrão administrada pelo `rig` nesta máquina.
- Adicionado `rproj.toml` com as 15 dependências diretas usadas pelo código do curso.
- Adicionado `rproj.lock` multiplataforma para Windows, Linux, macOS e instalações a partir do código-fonte.
- Adicionados `.Renviron` e `.rvenvlib/`, responsáveis por ativar automaticamente a biblioteca isolada do projeto em `.rvenv/`.
- Configurada preferência por pacotes binários para tornar a restauração mais rápida e confiável.
- Fixado `gt` na série 1.2, que possui binário para R 4.5 no Windows e evita uma incompatibilidade de instalação do pacote-fonte pelo `rig` 0.11.0.
- Removidos `.Rprofile`, `renv.lock`, `renv/activate.R`, `renv/.gitignore` e as regras antigas de `renv/library` e `renv/staging`.
- Adicionada `.rvenv/` ao `.gitignore`, pois a biblioteca local é recriada por `rig proj sync`.

### Conteúdo e documentação

- Atualizados o README, a página inicial, as informações gerais e o índice de slides para apresentar o `rig` como ferramenta de reprodutibilidade.
- Reescritas as instruções de instalação com os fluxos `rig proj init`, `rig proj add`, `rig proj lock`, `rig proj sync`, `rig proj status` e `rig run`.
- Revisadas as Aulas 1, 3 e 5 e os slides das Aulas 3 e 5 para usar `rproj.toml`, `rproj.lock` e `.rvenv/` de forma consistente.
- Atualizadas orientações de solução de problemas, versionamento, checklist de revisão e exemplos de mensagens de commit.
- Regenerado todo o conteúdo publicado em `_site/` com as novas instruções.

### Validação

- Confirmado que `rig proj status` reconhece o ambiente R 4.5.2 como sincronizado.
- Confirmado que o R iniciado por `rig run` usa `.rvenv/lib` como primeira biblioteca.
- Verificado o carregamento das dependências centrais: `knitr`, `dplyr`, `ggplot2`, `gt`, `plotly`, `leaflet` e `quarto`.
- Renderizadas com sucesso as 19 entradas do projeto Quarto, incluindo páginas, cinco aulas, cinco apresentações e o relatório parametrizado.
- Verificada a ausência de referências textuais ao gerenciador anterior nas fontes e nos HTMLs renderizados.
