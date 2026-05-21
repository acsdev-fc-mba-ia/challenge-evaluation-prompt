### A) Seção "Técnicas Aplicadas (Fase 2)":

#### 1. Role Prompting

- **O que é:** atribui ao modelo uma persona especialista antes de qualquer instrução.
- **Por que escolhi:** o v1 não tinha persona definida, então o modelo respondia em tom genérico. Forçar a persona de PM Sênior ancorou o vocabulário em metodologias ágeis (User Story, Critérios de Aceitação, Given/When/Then) e melhorou diretamente **Clarity** e **Helpfulness**.
- **Como apliquei (exemplo do v2):**

  ```
  Você é um Product Manager Sênior especialista em metodologias ágeis
  com 10 anos de experiência.
  Sua tarefa é transformar relatos de bugs em User Stories precisas,
  adaptando formato e detalhe ao tipo de bug.
  ```

#### 2. Chain of Thought (CoT)

- **O que é:** instrui o modelo a raciocinar em passos antes de produzir a resposta final.
- **Por que escolhi:** o dataset mistura bugs simples, médios e complexos. Sem raciocínio prévio, o modelo aplicava o mesmo template a todos os casos, derrubando **F1-Score** e **Correctness**. O CoT força classificação da complexidade e escolha da persona ("Como o sistema" vs "Como um usuário") antes da escrita.
- **Como apliquei (exemplo do v2):**

  ```
  Raciocine internamente nesta ordem antes de escrever.
  NÃO imprima o raciocínio — entregue apenas a User Story final.

  PASSO 1 - Defina persona "Como o sistema" se o bug é comportamento do SISTEMA...
  PASSO 2 - Defina persona "Como um [usuário]" se o bug é EXPERIÊNCIA DO USUÁRIO...
  PASSO 3 - Classifique o bug pela ESTRUTURA (SIMPLES / MÉDIO / COMPLEXO)
  PASSO 4 - Escolha o template de saída adequado
  PASSO 5 - Escreva a User Story
  ```

#### 3. Few-shot Learning

- **O que é:** fornece pares entrada/saída completos para calibrar o modelo.
- **Por que escolhi:** é a técnica que mais impactou **Precision** e **F1-Score**, porque o avaliador compara a saída contra um gabarito específico. Sem exemplos, o modelo "inventava" o formato. Os exemplos cobrem os 3 níveis de complexidade do dataset, garantindo cobertura.
- **Como apliquei (exemplo do v2):**

  ```
  ENTRADA (simples): "Botão de adicionar ao carrinho não funciona no produto ID 1234."

  SAÍDA:
  Como um cliente navegando na loja, eu quero adicionar produtos ao
  meu carrinho de compras, para que eu possa continuar comprando...

  Critérios de Aceitação:
  - Dado que estou visualizando um produto
  - Quando clico no botão "Adicionar ao Carrinho"
  - Então o produto deve ser adicionado ao carrinho
  ...
  ```

  São 7 exemplos no total (2 simples, 4 médios, 2 complexos), alinhados ao dataset de referência.

### B) Seção "Resultados Finais"

- Link Prompt V1: https://smith.langchain.com/hub/acsdev/bug_to_user_story_v1

- Link Prompt V2: https://smith.langchain.com/hub/acsdev/bug_to_user_story_v2

- Execução v1 ( FALHA ): Veja o arquivo ./README.evaluate.with-v1.md

- Execução v2 ( SUCESSO ): Veja o arquivo ./README.evaluate.with-v2.md

#### Tabela Comparativa: v1 (ruim) vs v2 (otimizado)

| Métrica          | v1 (baseline) | v2 (otimizado) | Δ (variação) | Threshold (≥ 0.9) v1 | Threshold (≥ 0.9) v2 |
| ---------------- | :-----------: | :------------: | :----------: | :------------------: | :------------------: |
| Helpfulness      |     0.85      |      0.94      |    +0.09     |          ✗           |          ✓           |
| Correctness      |     0.79      |      0.93      |    +0.14     |          ✗           |          ✓           |
| F1-Score         |     0.75      |      0.92      |    +0.17     |          ✗           |          ✓           |
| Clarity          |     0.87      |      0.93      |    +0.06     |          ✗           |          ✓           |
| Precision        |     0.83      |      0.94      |    +0.11     |          ✗           |          ✓           |
| **Média Geral**  |  **0.8183**   |   **0.9335**   |  **+0.1152** |          ✗           |          ✓           |
| **Status Final** | ❌ REPROVADO  |  ✅ APROVADO   |       —      |           —          |           —          |

### C) Seção "Como Executar"

1. Abra o projeto no vscode

2. Ctrl + Shit + P, Dev Container: Rebuild and Reopen Container **( ou opção similar que prepare o dev container )**

3. Abrir o terminal na pasta raiz e execute `make test`

4. Execute o comando `make pull-prompt` e veja o resultado do pull no arquivo raw_prompts.
    - ANTES DE EXECUTAR
    - Não esqueça de por suas credencias no arquivo .env

5. Execute o comando `make push-prompt` e veja o resultado no console.
    - ANTES DE EXECUTAR
    - Não esqueça de por suas credencias no arquivo .env
    - Na linha 21 do script push_prompts.py coloque o seu handle name
    - IMPORTANTE: Não é possível rodar o script duas vezes consecutivas sem alterar o prompt
        - Então é necessário fazer uma pequena modificação

6. Execute o comando `make evaluate` para rodar o evaluation no LangSmith
    - ANTES DE EXECUTAR
    - Não esqueça de por suas credencias no arquivo .env
    - No arquivo `.env` escolha o nome o valor da variável LANGSMITH_PROJECT
        - Escolha um valor para cada execução:
        - Para o prompt inicial eu deixei o valor: `FC_Challenge_Prompt_Evaluation`
        - Para o prompt corrigido eu utilisei um padrão `FC_Challenge_Prompt_Evaluation V2` 


### D) Evidências no LangSmith:

Screenshot execução negativa: `./screenshot/IMAGE.evaluate.with-v1.png`
Screenshot execução positiva: `./screenshot/IMAGE.evaluate.with-v2.png`

### Area de comunicação com o Avaliador

Como não temos uma boa forma de nos comunicar para a avaliação e/ou discução sobre o exercício, peço por favor que coloque
seguindo o padrão YYYY-MM-MM, nome, mensagem na lista ordenada abaixo.
