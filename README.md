# COMANDOS SHELL
## ls
```
ls
```
Lista arquivos.

#### parâmetros:

- ``-ltr``<br>
Ordena os arquivos/diretorios do mais antigo para o mais novo.

- ``-1``<br>
Mostra um arquivo/diretorio por linha, sem os detalhes.

## ps
```
ps
```
Mostra somente os processos do usuário atual e da sessão atual.

#### parâmetros:
- ``axu`` <br>
Mostra processos de todos os usuários e também aqueles processos que não estão, necessariamente, sendo executados naquele terminal.

## pipe |

```
cat /etc/nome_do_arquivo | grep "abc"
```
O resultado do comando ``Cat`` será a entrada do comando ``grep``.

## more
```
cat /etc/nome_do_arquivo | more
```
Usado para leitura de arquivos que ocupem mais de uma tela. Quando toda a tela é ocupada, o more efetua uma pausa e permite que você pressione Enter ou espaço para continuar avançando no arquivo sendo visualizado.

## grep
```
cat /etc/nome_do_arquivo | grep "abc"
```
Procura por trechos de texto (strings) dentro de arquivos ou diretórios e retorna em quais arquivos a string foi encontrada.

#### variações:

- ``egrep`` <br>
procura um padrão de texto, usando expressões regulares estendidas para executar a correspondência. Executar o egrep é equivalente a executar o grep com a opção -E.

- ``fgrep`` <br>
procura por cadeias de caracteres fixos em um arquivo ou arquivos. “Caractere fixo” significa que a string é interpretada literalmente.

## mkdir
```
mkdir nome_do_diretorio
```
Cria diretórios.

#### parâmetros:
- ``-p`` <br>
Cria toda a árvore de diretório.<br>
``mkdir \dir\dir\dir\arq``

## touch
```
touch nome_do_arquivo
```
Usado principalmente para criar arquivos vazios, além de alterar o registro de data e hora (timestamp) de arquivos ou pastas existentes.

## echo
```
echo "Texto exemplo"
```
Mostra texto na saída padrão seguido por uma nova linha.

#### parâmetros:
- ``-n`` <br>
Não quebra a linha.

- ``-e``<br>
Reconhece, por exemplo, ``\n`` e ``\t`` dentro da string e eles são processados não saída.

## rm
```
rm nome_do_arquivo
```
Remove arquivos.

#### parâmetros:
- ``-r`` <br>
Remove recursivamente toda a árvore dentro do diretório.
``rm -r dir\dir\arq``

## sleep
```
sleep 10
```
Forçar a espera de um certo período de tempo, em segundos, entre a execução de comandos.


<br>
<br>
<br>
<br>

<center><h5> by João Victor Naves </h5></center>
