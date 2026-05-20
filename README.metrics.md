╰$ make metrics 
python src/metrics.py
======================================================================
TESTANDO MÉTRICAS CUSTOMIZADAS
======================================================================

📊 Provider: openai
🤖 Modelo de Avaliação: gpt-4o

======================================================================
PARTE 1: MÉTRICAS GERAIS
======================================================================

1. F1-Score:
   Score: 0.67
   Precision: 1.00
   Recall: 0.50
   Reasoning: A resposta gerada é precisa, pois as informações fornecidas sobre o horário de funcionamento de segunda a sexta estão corretas e relevantes. No entanto, a resposta omite o horário de funcionamento de sábado, que é uma parte importante da resposta esperada. Portanto, a precisão é 1.0, mas o recall é 0.5, já que apenas parte das informações esperadas está presente.

2. Clarity:
   Score: 0.75
   Reasoning: ORGANIZAÇÃO: 1.0 - A resposta é bem estruturada e segue uma ordem lógica. LINGUAGEM: 1.0 - A linguagem é simples e direta, fácil de entender. AUSÊNCIA DE AMBIGUIDADE: 0.5 - A resposta é clara, mas omite informações sobre o funcionamento aos sábados, o que pode causar dúvidas. CONCISÃO: 0.5 - A resposta é concisa, mas falta a informação completa sobre o horário de sábado, tornando-a insuficiente. A média dos critérios resulta em um score de 0.75.

3. Precision:
   Score: 0.50
   Reasoning: A resposta gerada contém uma alucinação, pois omite o horário de funcionamento de sábado, que é parte da informação esperada. Assim, a ausência de alucinações é 0.5. A resposta está focada na pergunta sobre o horário de funcionamento, então o foco na pergunta é 1.0. No entanto, a correção factual é 0.5, pois a resposta não inclui o horário de sábado, resultando em uma informação incompleta. A média dos critérios é (0.5 + 1.0 + 0.5) / 3 = 0.67.

======================================================================
PARTE 2: MÉTRICAS ESPECÍFICAS PARA BUG TO USER STORY
======================================================================

4. Tone Score (Tom profissional e empático):
   Score: 1.00
   Reasoning: A user story gerada atende a todos os critérios de avaliação com excelência. Em termos de profissionalismo, a linguagem é clara, direta e apropriada para documentação ágil, sem jargões ou informalidades. A empatia com o usuário é evidente, pois a história foca na experiência do cliente e na frustração de não conseguir adicionar produtos ao carrinho. O foco em valor é bem articulado, explicando o benefício de poder continuar comprando e finalizar a compra posteriormente. A linguagem é positiva e orientada para a solução, concentrando-se no que o usuário deseja realizar, em vez de apenas corrigir o bug. A estrutura 'para que eu possa...' é utilizada de forma eficaz para destacar o valor real para o usuário. Assim, a user story é completa e bem elaborada.

5. Acceptance Criteria Score (Qualidade dos critérios):
   Score: 0.88
   Reasoning: 1. FORMATO ESTRUTURADO: 1.0 - Os critérios seguem o formato Given-When-Then, são claramente separados e de fácil leitura. 2. ESPECIFICIDADE E TESTABILIDADE: 1.0 - Os critérios são específicos e permitem a criação de testes automatizados. Não há termos ambíguos. 3. QUANTIDADE ADEQUADA: 1.0 - A quantidade de critérios é apropriada para um bug simples, com cinco critérios bem definidos. 4. COBERTURA COMPLETA: 0.5 - Embora cubra o cenário de sucesso, não aborda cenários de erro ou edge cases, como o que acontece se o produto não puder ser adicionado. Não há menção a requisitos técnicos específicos, como tempo de resposta ou comportamento em caso de falha. A média dos critérios resulta em um score de 0.875.

6. User Story Format Score (Formato correto):
   Score: 1.00
   Reasoning: A user story gerada segue perfeitamente o formato padrão, identificando claramente o tipo de usuário como 'um cliente navegando na loja'. A ação desejada é clara e específica, relacionada diretamente ao bug do botão 'Adicionar ao Carrinho'. O benefício articulado é significativo, permitindo que o cliente continue comprando e finalize a compra posteriormente. A separação entre a user story principal e os critérios de aceitação é clara, com cada seção bem definida, facilitando a leitura e navegação. Todos os elementos essenciais estão presentes e bem estruturados, resultando em uma user story completa e eficaz.

7. Completeness Score (Completude e contexto):
   Score: 0.80
   Reasoning: A user story cobre bem o problema relatado no bug, com uma cobertura de problema de 1.0, pois aborda diretamente a funcionalidade do botão 'Adicionar ao Carrinho'. No entanto, o contexto técnico é avaliado em 0.5, pois não há detalhes técnicos adicionais, mas isso é aceitável para um bug simples. O impacto e severidade são avaliados em 0.7, pois a user story não menciona explicitamente o impacto, mas a funcionalidade é essencial para a experiência do usuário. Tasks técnicas não são necessárias para este bug simples, então a pontuação é 1.0. Informações adicionais relevantes são avaliadas em 0.5, pois não há menção de steps to reproduce ou ambiente, que poderiam ser úteis. A média dos critérios resulta em um score final de 0.8, refletindo uma boa completude para um bug simples, mas com espaço para melhorias em detalhes técnicos e impacto.

======================================================================
✅ TODOS OS TESTES CONCLUÍDOS!
======================================================================