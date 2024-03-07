# Redox

Análise dos PDFs oficiais dados pelo INEP de provas passadas do ENEM, convertendo os PDFs em dados estruturados.

O objetivo é que seja possivel passar uma prova do inep e o programa irá extrair todos os dados do PDF sem perder nenhuma informação extrutural.  
O principal foco será na extração de **questões** das provas para um schema JSON a ser definido.

## Possível Interface
`redox --ano 2023 --cor azul [arquivo.pdf]`  
Extrai todas as questões para o arquivo `questoes.json` e coloca todas as imagens encontradas dentro da pasta `img`.

```
.
├── 2023
│   ├── imgs
│   │   ├── 001.png
│   │   └── 002.png
│   └── questoes.json
└── arquivo.pdf
```

`redox --ano 2023 --cor azul --gabarito [arquivo.pdf]`  
Extrai o gabarito para o arquivo `gabarito.json`.

```
.
├── 2023
│   └── gabarito.json
└── arquivo.pdf
```
