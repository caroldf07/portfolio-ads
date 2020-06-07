# Projetos realizados na faculdade de Análise e Desenvolvimento de Sistemas

## Primeiro Semestre
![](https://img.shields.io/github/languages/count/caroldf07/portfolio-ads?color=green&style=for-the-badge)  ![](https://img.shields.io/github/languages/top/caroldf07/portfolio-ads?style=for-the-badge)

-   Algoritmos e Programação Estruturada
-   Análise e Modelagem de Sistemas
-   Arquitetura e Organização de Computadores
-   Lógica Computacional
-   Modelagem Banco de Dados (SQL)

### Sistema Zer@ Dengue

Alberto caminhava por uma rua próxima a sua casa e em um terreno baldio viu vários entulhos. Preocupado com a dengue e como o terreno não tinha muros, ele resolveu verificar se não havia criadouros do mosquito  Aedes aegypti. Para seu desespero, havia um pneu e três garrafas de água com diversas larvas do provável mosquito. Imediatamente tirou a água dos pneus e dos recipientes, mas ficou muito apreensivo com essa situação. A dengue mata e estava muito perto da sua casa. Hoje ele resolveu aquele problema pontual, mas como continuar com essa vigilância?

Com esses questionamentos ele fez uma pesquisa e soube que na empresa XXX, composta de vários egressos e alunos de Análise e Desenvolvimento de Sistemas (ADS) está com um projeto em execução para o desenvolvimento de um software para o Ministério da Saúde chamado **Sistema Zer@ Dengue**, no qual qualquer pessoa poderá fazer uma denúncia de possíveis focos de dengue em todo território nacional. Bastará acessar o sistema Zer@ Dengue, criar uma conta e fazer um descritivo do problema, indicando o endereço da ocorrência, inclusive podendo enviar fotos, sendo que, posteriormente o usuário receberá um relato da ação tomada pelo Ministério da Saúde.

Pesquisando mais sobre o assunto, Alberto encontra mais informações, conforme o site do Dr. Drauzio Varela, no endereço https://drauziovarella.uol.com.br/doencas-e-sintomas/dengue/ (acessado em 28 jan. 2020) a dengue pode se assemelhar a uma gripe forte, mas há quadros que podem levar a óbito.

------------

#### Algoritmo e Programação Estruturada
````c
#include <stdio.h>
#include <stdlib.h>
#define N 20

struct No {
	int chave;
	struct No* prox;
};

struct Fila {
	struct No *inicio, *fim;
	char vet[N];
};

struct No* newNode(int k)
{
	struct No* temp = (struct No*)malloc(sizeof(struct No));
	temp->chave = k;
	temp->prox = NULL;
	return temp;
}

struct Fila* inicia_Fila()
{
	struct Fila* q = (struct Fila*)malloc(sizeof(struct Fila));
	q->inicio = q->fim = NULL;
	return q;
}

void insere_fila(struct Fila* q, int k)
{
	struct No* temp = newNode(k);
	if (q -> tam == N - 1){ /* Verifica se a Fila está completa */
	printf("A fila esta cheia\n");
	}
q->fim->prox = temp;
q->fim = temp;
}

void remove_fila(struct Fila* q)
{
	// If Fila is empty, return NULL.
	if (q->inicio == NULL)
	return;
	struct No* temp = q->inicio;
	q->inicio = q->inicio->prox;
	if (q->inicio == NULL)
	q->fim = NULL;
	free(temp);
}

int main()
{
	struct Fila* q = inicia_Fila();
	insere_fila(q, 10);
	//insere_fila(q, 20);remove_fila(q);
	remove_fila(q);
	//insere_fila(q, 30);
	//insere_fila(q, 40);
	//insere_fila(q, 50);
	remove_fila(q);
	printf("Fila Inicio : %d \n", q->inicio->chave);
	printf("Fila Fim : %d", q->fim->chave);
	return 0;
}
````

#### Análise e Modelagem de Sistemas
[BPMN](https://i.imgur.com/tV2NYOK.png)
[Diagrama de Use Case](https://i.imgur.com/WtQUOgH.png)

#### Modelagem de Banco de Dados (SQL)
[MER do Banco de Dados](https://i.imgur.com/J80Mdm0.png)


