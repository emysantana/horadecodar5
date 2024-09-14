programa
{
    // variáveis globais
    real saldo = 1000.0 // saldo inicial
    cadeia nome
    cadeia senha_correta = "3589"

    // função principal
    funcao inicio()
    {
        // pergunta o nome do usuário
        escreva("digite o seu nome: ")
        leia(nome)
        escreva("olá ", nome, ", é um prazer ter você por aqui!\n")

        // menu de opções
        inteiro opcao
        faca
        {
            escreva("\nMenu de opções:\n")
            escreva("1 - saldo\n")
            escreva("2 - extrato\n")
            escreva("3 - saque\n")
            escreva("4 - depósito\n")
            escreva("5 - transferência\n")
            escreva("6 - sair\n")
            escreva("escolha uma opção: ")
            leia(opcao)
            
            // escolhe a opção
            escolha(opcao)
            {
                caso 1:
                    se (verificar_senha())
                    {
                        saldo_atual()
                    }
                    pare
                caso 2:
                    se (verificar_senha())
                    {
                        exibir_extrato()
                    }
                    pare
                caso 3:
                    se (verificar_senha())
                    {
                        sacar_dinheiro()
                    }
                    pare
                caso 4:
                    deposito()
                    pare
                caso 5:
                    se (verificar_senha())
                    {
                        transferencia()
                    }
                    pare
                caso 6:
                    escreva(nome, ", foi um prazer ter você por aqui!\n")
                    pare
            }
            
        } enquanto (opcao != 6)
    }

    // função para ver o saldo
    funcao saldo_atual()
    {
        escreva("seu saldo atual é: R$ ", saldo, "\n")
    }

    // função para mostrar extrato
    funcao exibir_extrato()
    {
        escreva("extrato:\n")
        escreva("- compra: supermercado R$ 150.00\n")
        escreva("- compra: farmácia R$ 50.00\n")
        escreva("- depósito: R$ 300.00\n")
        escreva("- compra: restaurante R$ 80.00\n")
        escreva("saldo atual: R$ ", saldo, "\n")
    }

    // função para saque
    funcao sacar_dinheiro()
    {
        real valor_saque
        escreva("digita o valor a ser sacado: ")
        leia(valor_saque)
        
        // veja se o valor é maior que zero
        se (valor_saque <= 0)
        {
            escreva("operação não autorizada. o valor de saque deve ser maior que zero.\n")
            retorne
        }
        
        // veja se tem saldo suficiente
        se (valor_saque > saldo)
        {
            escreva("operação não autorizada. saldo insuficiente.\n")
            retorne
        }

        // realiza o saque
        saldo = saldo - valor_saque
        escreva("saque realizado com sucesso! seu novo saldo é: R$ ", saldo, "\n")
    }

    // função para depósito
    funcao deposito()
    {
        real valor_deposito
        escreva("digita o valor a ser depositado: ")
        leia(valor_deposito)

        // verifica se o valor é maior que zero
        se (valor_deposito <= 0)
        {
            escreva("operação não autorizada. o valor do depósito deve ser maior que zero.\n")
            retorne
        }

        // realiza o depósito
        saldo = saldo + valor_deposito
        escreva("depósito realizado com sucesso! seu novo saldo é: R$ ", saldo, "\n")
    }

    // função para transferência
    funcao transferencia()
    {
        inteiro numero_conta
        real valor_transferencia

        escreva("digita o número da conta de destino: ")
        leia(numero_conta)

        escreva("digita o valor a ser transferido: ")
        leia(valor_transferencia)

        // veja se o valor é maior que zero
        se (valor_transferencia <= 0)
        {
            escreva("operação não autorizada. o valor da transferência deve ser maior que zero.\n")
            retorne
        }

        // veja se tem saldo suficiente
        se (valor_transferencia > saldo)
        {
            escreva("operação não autorizada. saldo insuficiente.\n")
            retorne
        }

        // realiza a transferência
        saldo = saldo - valor_transferencia
        escreva("transferência realizada com sucesso! seu novo saldo é: R$ ", saldo, "\n")
    }

    // função para verificar a senha
    funcao logico verificar_senha()
    {
        cadeia senha_digitada
        escreva("digita sua senha: ")
        leia(senha_digitada)

        // veja se a senha está correta
        se (senha_digitada == senha_correta)
        {
            retorne verdadeiro
        }
        senao
        {
            escreva("senha incorreta. tente novamente.\n")
            retorne falso
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 64; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */