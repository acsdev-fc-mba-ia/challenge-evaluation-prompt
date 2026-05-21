python src/evaluate.py

==================================================
AVALIAÇÃO DE PROMPTS OTIMIZADOS
==================================================

Provider: openai
Modelo Principal: gpt-4o-mini
Modelo de Avaliação: gpt-4o

Criando dataset de avaliação: FC_Challenge_Prompt_Evaluation V2.0 - test-eval...
   ✓ Carregados 15 exemplos do arquivo datasets/bug_to_user_story.jsonl
   ✓ Dataset criado com 15 exemplos

======================================================================
PROMPTS PARA AVALIAR
======================================================================

Este script irá puxar prompts do LangSmith Hub.
Certifique-se de ter feito push dos prompts antes de avaliar:
  python src/push_prompts.py


🔍 Avaliando: acsdev/bug_to_user_story_v2
   Puxando prompt do LangSmith Hub: acsdev/bug_to_user_story_v2
   ✓ Prompt carregado com sucesso
   Dataset: 15 exemplos
   Avaliando exemplos...
      [1/15] F1:0.75 Clarity:0.90 Precision:0.90
      [2/15] F1:1.00 Clarity:0.95 Precision:1.00
      [3/15] F1:1.00 Clarity:0.95 Precision:1.00
      [4/15] F1:0.69 Clarity:0.85 Precision:0.90
      [5/15] F1:1.00 Clarity:1.00 Precision:1.00
      [6/15] F1:0.90 Clarity:0.90 Precision:1.00
      [7/15] F1:0.90 Clarity:0.85 Precision:0.90
      [8/15] F1:1.00 Clarity:1.00 Precision:1.00
      [9/15] F1:1.00 Clarity:1.00 Precision:1.00
      [10/15] F1:0.85 Clarity:0.85 Precision:0.80
      [11/15] F1:1.00 Clarity:1.00 Precision:1.00
      [12/15] F1:1.00 Clarity:1.00 Precision:1.00
      [13/15] F1:0.90 Clarity:0.95 Precision:1.00
      [14/15] F1:0.90 Clarity:0.90 Precision:1.00
      [15/15] F1:0.90 Clarity:0.90 Precision:0.67

==================================================
Prompt: acsdev/bug_to_user_story_v2
==================================================

Métricas Derivadas:
  - Helpfulness: 0.94 ✓
  - Correctness: 0.93 ✓

Métricas Base:
  - F1-Score: 0.92 ✓
  - Clarity: 0.93 ✓
  - Precision: 0.94 ✓

--------------------------------------------------
📊 MÉDIA GERAL: 0.9335
--------------------------------------------------

✅ STATUS: APROVADO - Todas as métricas >= 0.9

==================================================
RESUMO FINAL
==================================================

Prompts avaliados: 1
Aprovados: 1
Reprovados: 0

✅ Todos os prompts atingiram todas as métricas >= 0.9!

✓ Confira os resultados em:
  https://smith.langchain.com/projects/FC_Challenge_Prompt_Evaluation V2.0 - test

Próximos passos:
1. Documente o processo no README.md
2. Capture screenshots das avaliações
3. Faça commit e push para o GitHub
