class ExpectationTo
  def initialize(value)
    @value = value
  end

  def be(expected)
    unless @value == expected
      puts "Expected #{@value} to be #{expected}"
      return
    end

    puts 'Test passed'
  end

  # Avaliando se existe método correspondente no @value
  def method_missing(method_name, *args)
    if method_name.to_s.start_with?('be_') #
      value_method = (method_name.to_s[3..-1] + '?').to_sym

      unless @value.respond_to?(value_method) #
        puts "#{@value.inspect} does not respond to ##{value_method}"
        return
      end

      unless @value.send(value_method, *args) == true #
        puts "Expected #{@value.inspect} to be #{value_method.to_s[0..-2]}"
        return
      end

      puts 'Test passed' #
    else
      super
    end
  end
end

class Expectation
  def initialize(value)
    @value = value
  end

  def to
    ExpectationTo.new(@value)
  end
end

def expect(value)
  Expectation.new(value)
end

# ------------------------------

expect(1).to.be(1) # Test passed

# Baseado no método #nil? do Ruby
expect('').to.be_nil # Gera um erro
expect(nil).to.be_nil # Test passed

class Object
  def present? # Simulando o método #present? do Rails
    true
  end
end

expect('').to.be_present # Test passed

expect('hello world').to.be_greeting # Gera um erro
expect('hello world').to.foo # Gera um erro

# Acredito que para separar o .to do .be(como no RSpec) é necessário
# um nível maior ainda de abstração e metaprogramação
