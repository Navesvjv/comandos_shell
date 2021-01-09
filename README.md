# COMANDOS SHELL
## ls
```
ls -ltr
```
Ordena os arquivos/diretorios do mais antigo para o mais novo.

```
ls -1
```
Mostra um arquivo/diretorio por linha, sem os detalhes.

## ps
```
ps
```
Mostra somente os processos do usuario atual e da sessão atual.
```
ps axu
```
Mostra todos os processos e detalhes.

## pipe |

```
cat /etc/nome_do_arquivo | grep "abc"
```
O resultado do comando ``Cat`` será a entrada do comando ``grep``

## more
```
cat /etc/nome_do_arquivo | more
```
O comando more pode ser usado como comando para leitura de arquivos que ocupem mais de uma tela. Quando toda a tela é ocupada, o more efetua uma pausa e permite que você pressione Enter ou espaço para continuar avançando no arquivo sendo visualizado.

## grep
```
cat /etc/nome_do_arquivo | grep "abc"
```
O grep é um comando com uma função simples: ele procura por trechos de texto (strings) dentro de arquivos ou diretórios e retorna para você em quais arquivos a string foi encontrada, inclusive mostrando a linha em que isso ocorreu.

Variações:

- ``egrep`` <br>
procura um padrão de texto, usando expressões regulares estendidas para executar a correspondência. Executar o egrep é equivalente a executar o grep com a opção -E

- ``fgrep`` <br>
procura por cadeias de caracteres fixos em um arquivo ou arquivos. “Caractere fixo” significa que a string é interpretada literalmente

## touch
```
touch nome_do_arquivo
```
Usado principalmente para criar arquivos vazios, além de alterar o registro de data e hora (timestamp) de arquivos ou pastas existentes.
