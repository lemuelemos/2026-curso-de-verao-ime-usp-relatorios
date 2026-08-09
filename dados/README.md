# Dados do curso — perfil dos estados brasileiros

Estes dois arquivos são o estudo de caso usado nas cinco aulas. Servem também de exemplo de
como documentar a origem de um dado (algo cobrado na rubrica do [trabalho final](../trabalho_final.qmd)).

## `populacao_uf.csv`

Uma linha por unidade federativa (27 no total).

| Coluna | Descrição |
|---|---|
| `uf` | Sigla da unidade federativa |
| `nome_uf` | Nome completo |
| `regiao` | Região (Norte, Nordeste, Centro-Oeste, Sudeste, Sul) |
| `capital` | Cidade-capital |
| `populacao` | População residente — Censo Demográfico 2022 |
| `area_km2` | Área territorial, em km² |
| `latitude`, `longitude` | Coordenadas aproximadas da capital, em graus decimais |
| `densidade_dem` | `populacao / area_km2`, calculada a partir das duas colunas acima |

**Fonte:** IBGE — Censo Demográfico 2022 (população e área por unidade da federação),
consolidado em <https://pt.wikipedia.org/wiki/Unidades_federativas_do_Brasil>. Coordenadas de
capitais a partir de referência geográfica padrão. Dados coletados em 2026-08-09.

## `pib_uf.csv`

| Coluna | Descrição |
|---|---|
| `uf` | Sigla da unidade federativa |
| `ano_referencia` | Ano de referência do PIB per capita (2023) |
| `pib_per_capita` | PIB per capita, em R$ correntes |

**Fonte:** IBGE — Sistema de Contas Regionais do Brasil 2023, consolidado em
<https://pt.wikipedia.org/wiki/Lista_de_unidades_federativas_do_Brasil_por_PIB_per_capita>.
Dados coletados em 2026-08-09.

> **Nota:** `populacao_uf.csv` é de 2022 e `pib_uf.csv` é de 2023 — anos de referência
> diferentes porque são levantamentos distintos do IBGE. Isso é intencional: a Aula 3 usa a
> diferença para explicar por que precisamos documentar a data de cada fonte ao juntar tabelas.
