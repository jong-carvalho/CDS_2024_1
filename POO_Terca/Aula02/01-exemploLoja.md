```mermaid

classDiagram

   Pessoa <|-- Vendedor
   Pessoa <|-- Cliente

   class Pessoa {
       +String nome
       +String cpf
       +String rg
       +String logradouro
   }

   class Vendedor{
     +int codVendedor
     +float vendasRealizadas
     +float comissao

     verificarComissao(codVendedor, vendasRealizadas)
     verificarVendasRealizadas(codVendedor)
   }
   class Cliente{
     +int codCliente
     +float saldo
     +float extrato
     +int codsPedidos

     verificarExtrato(codCliente)
     verificarSaldo(codCliente)
     verificarStatusPedidos(codsPedidos)

   }
``````