# Metaprogramação: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="code.jpg" align="center" alt="A laptop screen with code" width="300" style="border-radius: 4px;" />
  * ## O que é?
    É uma técnica de programação, em que softwares tem a habilidade de tratar outros softwares como seus dados.
    Pode ler, gerar, analisar ou transformar outros softwares e até modificar a si próprio enquanto está sendo executado.
    Metaprogramação é sobre escrever softwares para manipular outros softwares(ou a si próprio) como seus dados.

  * ### Aplicações:
    Você pode considerar a metaprogramação se:
      Você se encontrar escrevendo código com padrões semelhantes repetidamente.
      Você deseja criar uma linguagem de domínio específico (DSL).

  * ### Exemplos:

  * ### Estaremos nos aprofundando nos tópicos abaixo:
    * DSL(Domain Specific Language)
    * Reflexão(Reflection)
    * Geração de código(Code generation)

  ##

  * ## DSL(Domain Specific Language):
    * ### O que é?
      DSL é uma linguagem de programação ou especificação dedicada a um problema de domínio particular, uma técnica de metaprogramação. As DSLs provêm uma sintaxe e semântica que tornam mais fácil para criar soluções para um problema específico.

    * ### Aplicações:
      Você pode considerar o uso de DSL se:
        O problema do domínio é bem definido e específico e existe uma DSL criada para ele, por exemplo, para realizar pesquisas/alterações em base de dados, SQL é a DSL.
      Você pode considerar a criação de uma DSL se:
        As linguagens de programação comuns e suas bibliotecas não conseguem expressar de maneira adequada a solução para o problema do domínio, ou se a elas fazem seu código ser muito difícil de ler e escrever.
      Além disso, as DSLs podem ter uma otimização de performance que as linguagens de programação comuns não podem. 

    * ### Exemplos:
      * HTML templating:
        * Para javascript:
          * [Handlebars](https://github.com/handlebars-lang/handlebars.js)
          * [EJS](https://github.com/mde/ejs)
          * [Pug](https://github.com/pugjs/pug)
          * [xander-email](https://github.com/ZaikoXander/xander-email)
          * JSX(Criado para o React. É compilado para javascript usando o [Babel](https://github.com/babel/babel), [Vite](https://github.com/vitejs/vite))
        * Para Python:
          * [Jinja](https://github.com/pallets/jinja/)
        * Para Ruby:
          * [Liquid da Shopify](https://github.com/Shopify/liquid)
          * [ERB](https://github.com/ruby/erb)
          * [erubi(Implementação do ERB do Rails)](https://github.com/jeremyevans/erubi)
          * [HAML](https://github.com/haml/haml)
          * [Slim](https://github.com/slim-template/slim)
      * Outros exemplos de DSLs são:
        * SQL, CSS, RegEx etc.
      
  * ## Reflexão:
    * ### O que é?
      É a capacidade de um software de examinar e modificar sua própria estrutura e seu comportamento como dados. O software pode mudar sua própria estrutura e comportamento, como mudar valores de variáveis, adicionar novos métodos, gerar novo código, tudo em tempo de execução.

    * ### Aplicações:
      Você pode considerar o uso de DSL se:
        Você precisa inspecionar ou modifica o comportamento de objetos em tempo de execução.
        Você está trabalhando com serialização e desserialização. Ou seja transformar um objeto em um formato que pode ser armazenado ou transmitido e depois recriar o objeto a partir desse formato.
        Você está implementando um ORM.
        Você está construindo um framework de injeção de dependência.
        Você está escrevendo testes unitários. (expect(variable).to be_present)
        Você está construindo um sistema que suporta plugins ou extensões.

    * ### Exemplos:
      * Em Javascript:
        * Obter propriedades de um objeto:
          ```javascript
            let obj = {a: 1, b: 2, c: 3}
            console.log(Object.getOwnPropertyNames(obj)) // ['a', 'b', 'c']
          ```
        * Invocar uma função por nome:
          ```javascript
            let obj = {
              greet: function() {
                console.log('Hello, world!')
              }
            }
            let methodName = 'greet'
            obj[methodName]() // Hello, world!
          ```
      * Em Ruby:
        * Obter a lista de métodos de um objeto:
          ```ruby
            class MyClass
              def my_method
                puts 'Hello, world!'
              end
            end
            obj = MyClass.new
            puts obj.methods # [:my_method, :inspect, :to_s, ...]
          ```
        * Invocar um método por nome:
          ```ruby
            class MyClass
              def my_method
                puts 'Hello, world!'
              end
            end
            obj = MyClass.new
            method_name = :my_method
            obj.send(method_name) # Hello, world!
          ```
    
  * ## Geração de código:
    * ### O que é?
      Se refere ao processo de um software criar ou manipular código automaticamente. Pode ser realizado em tempo de compilação ou em tempo de execução, e o código gerado pode ser na mesma linguagem em que foi gerada ou em outra linguagem.

    * ### Aplicações:

    * ### Exemplos:
