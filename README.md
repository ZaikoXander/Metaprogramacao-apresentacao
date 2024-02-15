# Metaprogramação: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="code.png" align="center" alt="Uma tela de notebook com código" width="300" />
## Introdução

Metaprogramação é uma técnica de programação, em que softwares podem ler, gerar, analisar ou transformar outros softwares e até modificar a si próprio enquanto está sendo executado.

* ### Quando usar
  * Quando se encontrar escrevendo código com padrões semelhantes repetidamente.
  * Quando desejar criar uma linguagem de domínio específico (DSL).

* ### Exemplos
  * Javascript: Babel, TypeScript, React, Angular, create-react-app, Next.js, NestJS, Vue, Svelte, Vite, Lodash, Handlebars etc.
  * Python: Django, Jinja etc.
  * Ruby: Rails, RSpec, ERB, Liquid etc.

* ### Os exemplos demonstrados em código serão feitos nas seguintes linguagens
  <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg" /> <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-original.svg" /> <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/ruby/ruby-original.svg" />
        

* ### Nos aprofundaremos nos seguintes tópicos
  * [DSL (Domain Specific Language)](#dsl-(domain-specific-language))
  * [Reflexão (Reflection)](#reflexão-(reflection))
  * [Geração de código (Code generation)](#geração-de-código-(code-generation))

##

* ## DSL (Domain Specific Language)
  DSL é uma linguagem de programação ou especificação dedicada a um problema de domínio particular, uma técnica de metaprogramação. As DSLs provêm uma sintaxe e semântica que tornam mais fácil para criar soluções para um problema específico.

  * ### Quando usar
    * O problema do domínio é bem definido e específico e existe uma DSL criada para ele, por exemplo, para realizar pesquisas/alterações em base de dados, SQL é a DSL.

  * ### Quando criar
    * As linguagens de programação comuns e suas bibliotecas não conseguem expressar de maneira adequada a solução para o problema do domínio, ou se elas fazem seu código ser muito difícil de ler e escrever.
  
  * Além disso, as DSLs podem ter uma otimização de performance que as linguagens de programação comuns não podem. 

  * ### Exemplos
    * Template engines de HTML:
      * Javascript: [Handlebars](https://github.com/handlebars-lang/handlebars.js), [EJS](https://github.com/mde/ejs), [Pug](https://github.com/pugjs/pug), [xander-email](https://github.com/ZaikoXander/xander-email) e JSX(Criado para o React. É compilado para javascript usando o [Babel](https://github.com/babel/babel) ou [Vite](https://github.com/vitejs/vite))

      * Python: [Jinja](https://github.com/pallets/jinja/)

      * Ruby: [Liquid da Shopify](https://github.com/Shopify/liquid), [ERB](https://github.com/ruby/erb), [erubi(Implementação do ERB do Rails)](https://github.com/jeremyevans/erubi), [HAML](https://github.com/haml/haml), [Slim](https://github.com/slim-template/slim)

    * Outros exemplos de DSLs: SQL, CSS, RegEx etc.
    
* ## Reflexão (Reflection)
  É a capacidade de um software de examinar e modificar sua própria estrutura e seu comportamento como dados. O software pode mudar sua própria estrutura e comportamento, como mudar valores de variáveis, adicionar novos métodos, gerar novo código, tudo em tempo de execução.

  * ### Quando usar
    * Quando precisar inspecionar ou modifica o comportamento de objetos em tempo de execução.
    * Quando estiver trabalhando com serialização e desserialização. Ou seja transformar um objeto em um formato que pode ser armazenado ou transmitido e depois recriar o objeto a partir desse formato.
    * Quando estiver implementando um ORM.
    * Quando estiver construindo um framework de injeção de dependência.
    * Quando estiver escrevendo testes unitários. expect(variable).to be_present(be_present pode não ser um método nativo do RSpec ou Ruby, mas sim um método que foi adicionado em tempo de execução. Usando: #method_missing.) [Ver exemplo](expectation.rb)
    * Quando estiver construindo um sistema que suporta plugins ou extensões.

  * ### Exemplos
    * Em Javascript:
      * Obter propriedades de um objeto
        ```javascript
          let obj = {a: 1, b: 2, c: 3}
          console.log(Object.getOwnPropertyNames(obj)) // ['a', 'b', 'c']
        ```
      * Invocar uma função por nome
        ```javascript
          let obj = {
            greet: function() {
              console.log('Hello, world!')
            }
          }
          let methodName = 'greet'
          obj[methodName]() // Hello, world!
        ```
      * Criar um novo método em um objeto
        ```javascript
          let obj = {}
          obj.greet = function() {
            console.log('Hello, world!')
          }
          obj.greet() // Hello, world!
        ```

    * Em Ruby:
      * Obter a lista de métodos de um objeto
        ```ruby
          class MyClass
            def my_method
              puts 'Hello, world!'
            end
          end
          obj = MyClass.new
          puts obj.methods # [:my_method, :inspect, :to_s, ...]
        ```
      * Invocar um método por nome
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
      * Criar um novo método em uma classe
        ```ruby
          class MyClass
            def my_method
              puts 'Hello, world!'
            end
          end

          obj = MyClass.new

          MyClass.class_eval do
            define_method(:greet) do
              puts 'Hello, world!'
            end
          end

          obj.greet # Hello, world!
        ```

* ## Geração de código (Code generation)
  Se refere ao processo de um software criar ou manipular código automaticamente. Pode ser realizado em tempo de compilação ou em tempo de execução, e o código gerado pode ser na mesma linguagem em que foi gerada ou em outra linguagem.

  * ### Quando usar/criar
    * Você está escrevendo código repetitivo ou muito semelhante.
    * Você está trabalhando com diversas linguagens de programação e precisa converter código de uma linguagem para outra.
    * Você está criando uma DSL. Você pode usar o código da DSL para gerar código em outra linguagem.

  * ### Exemplos
    * Javascript: Babel, Typescript, React, NestJS, Vite, create-react-app, Astro, Next.js, Gatsby, etc.
      * O Babel é um transpilador que converte código em ES6 para ES5.
      * O TypeScript é um superset de Javascript que compila para Javascript.
      * O próprio React é um exemplo de geração de código, pois o JSX é compilado para Javascript.
      * O NestJS usa geradores de código para criar arquivos de configuração, módulos, controladores, etc.
      * Vite, create-react-app, Astro, Next.js, Gatsby, etc, são exemplos de frameworks/cli's que usam geradores de código para criar arquivos de configuração, páginas, etc.

    * Python: Django
      * O Django usa geradores de código para criar arquivos de configuração, models, views, migrations, etc.

    * Ruby: Rails, RSpec
      * O Rails usa geradores de código para criar arquivos de configuração, models, controllers, migrations, etc.
      * O RSpec usa geradores de código para criar arquivos de teste.

  * ### Para criar geradores de código podemos utilizar
    * No Javascript, libs como: [fs](https://nodejs.org/docs/latest/api/fs.html), [path](https://nodejs.org/docs/latest/api/path.html) e [commander](https://github.com/tj/commander.js) para criar CLI's.
    
    * No Python, libs como: [os](https://docs.python.org/3/library/os.html) e [argparse](https://docs.python.org/3/library/argparse.html) para criar CLI's.

    * No Ruby, libs como: [fileutils](https://ruby-doc.org/stdlib-3.0.0/libdoc/fileutils/rdoc/FileUtils.html) e [optparse](https://ruby-doc.org/stdlib-3.0.0/libdoc/optparse/rdoc/OptionParser.html) para criar CLI's.

## Conclusão
Espero que tenha sido informativo e útil. Passamos pelas bases da metaprogramação até tópicos mais avançados como DSL, reflexão e geração de código. Essas técnicas podem trazer muitos benefícios para o desenvolvimento de software, como redução de código repetitivo, aumento de produtividade, melhor organização do código, entre outros. Porém pode fazer com que o código fique mais complexo e difícil de entender. Portanto um uso inteligente e simples delas é essencial.

## Contribuindo

Contribuições são bem-vindas! Se você tiver alguma ideia, sugestão, abra uma issue ou envie um pull request.

## Licença

Esta apresentação é licenciada sob a [Licença MIT](LICENSE).
