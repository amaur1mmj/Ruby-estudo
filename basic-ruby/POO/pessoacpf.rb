require_relative "pessoa_test.rb"

class PessoaFisica < Pessoa
    attr_accessor :cpf
    attr_accessor :data_nascimento

end

pf = PessoaFisica.new

p pf.nome= "jaum"
