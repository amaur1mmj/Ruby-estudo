require_relative "pessoa_test.rb"

class PessoaJuridica < Pessoa
    attr_accessor :cnpj
    attr_accessor :nome_fantasia

end

pj = PessoaJuridica.new

p pj.nome = "Carlim"
