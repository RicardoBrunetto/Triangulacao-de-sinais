# Triangulação de Sinais
Este trabalho foi desenvolvido para a disciplina de Matemática Computacional (Ciência da Computação - UEM) em Dezembro/2017 por Ricardo Henrique Brunetto (ra94182@uem.br)

## Funcionalidade
O propósito é a estimação de localização com Triangulação de Sinais Baseado na Potência da Fonte Emissora.
O programa recebe um arquivo de entrada no formato:
```
p1  p2  p3  p4  p5  ... pn
A11 A12 A13 A14 A15 ... A1n
...
Am1 Am2 Am3 Am4 Am5 ... Amn
```
ou seja, uma matriz de `n` colunas com cabeçalho (`p1` à `pn` **não** são valores reais: são textos, tais quais se mostram [aqui](Código/caso_teste)) e `m` linhas, onde:
- Cada coluna representa um receptor;
- Cada linha representa um caso de teste (conjunto de medições de valores dos receptores).

## Especificações Tecnológicas
Todo o programa foi escrito em Matlab. O arquivo `triangulacao.m` local pode ser perfeitamente executado no ambiente Matlab, visto que não há dependências externas que requeiram complexidade.

## Implementação
O relatório com a fundamentação teórica e detalhes de implementação encontra-se [aqui](Documentação/main.pdf).

## Licença
Este projeto segue a licença [Creative Commons Attribution-ShareAlike (BY-SA)](https://creativecommons.org/licenses/by-sa/4.0/), que está detalhada no arquivo [`LICENSE.md`](LICENSE.md).
<p align="center">
  <img src="https://licensebuttons.net/l/by-sa/3.0/88x31.png">
</p>
