# Relatórios reprodutíveis com R — Curso de Verão IME-USP 2026

Material do curso de verão **Relatórios reprodutíveis com R**, oferecido pelo
Instituto de Matemática e Estatística da Universidade de São Paulo (IME-USP).

O curso apresenta o Quarto e práticas de reprodutibilidade para criar
relatórios, apresentações e sites com R ou Python, além de controle de versão
com Git e publicação no GitHub Pages.

## Site do curso

<https://lemuelemos.github.io/2026-curso-de-verao-ime-usp-relatorios/>

## Conteúdo do repositório

- `aulas/`: páginas com o conteúdo das cinco aulas;
- `slides/`: cinco apresentações oficiais em Reveal.js;
- `materiais/`: instruções de instalação do pré-curso e `materiais/exemplos/`, com um
  relatório parametrizado completo e funcional usado como referência pela Aula 4;
- `dados/`: base pública (IBGE) usada como estudo de caso nas cinco aulas, com a fonte
  documentada em `dados/README.md`;
- `_quarto.yaml`: navegação e configuração do site;
- `_site/`: versão renderizada usada pela publicação no GitHub Pages.

Os arquivos `.qmd` são as fontes do conteúdo. Evite editar manualmente os
arquivos HTML em `_site/`, pois eles são recriados durante a renderização.

O projeto limita explicitamente a renderização às páginas oficiais declaradas
em `_quarto.yaml`, evitando que rascunhos e arquivos auxiliares sejam
publicados por engano.

## Como executar localmente

### Pré-requisitos

- [Quarto](https://quarto.org/docs/get-started/);
- [rig](https://r-lib.github.io/rig/) para instalar e gerenciar o R;
- RStudio ou Positron (opcionais);
- os pacotes de R usados nas aulas que você pretende renderizar.

### Por que este projeto usa o rig?

O `renv` é uma solução madura para isolar pacotes, mas pressupõe que uma versão
compatível do R já esteja instalada. Neste curso, o `rig` foi escolhido para
padronizar as duas camadas com uma única ferramenta: ele seleciona ou instala o
R 4.5.2 e também recria a biblioteca registrada do projeto. Assim, o primeiro
comando após clonar o repositório é executado no terminal e não depende de
instalar previamente um pacote dentro do R.

O gerenciamento de projetos do `rig` ainda é experimental. A escolha vale para
este curso e não significa que todo projeto existente precise abandonar o
`renv`; equipes que já usam esse fluxo com sucesso podem continuar usando-o.

Clone o repositório e, na pasta do projeto, sincronize o ambiente pelo terminal:

```powershell
rig proj sync
```

O comando instala a versão do R e os pacotes registrados em `rproj.lock` na
biblioteca isolada `.rvenv/`. Depois, inicie a visualização:

```powershell
quarto preview
```

Para gerar todo o site sem iniciar o servidor de visualização, use
`quarto render` no terminal.

## Publicação

O workflow em `.github/workflows/static.yml` publica o conteúdo de `_site/` no
GitHub Pages a cada envio para a branch `main`. Por isso, depois de alterar as
fontes, renderize o projeto e inclua a saída atualizada no mesmo commit.

## Licença e créditos

O conteúdo é disponibilizado sob a licença
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.pt-br).
Consulte a página [Licença de uso](licenca.qmd) para os créditos e detalhes.
