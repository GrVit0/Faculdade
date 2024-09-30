programa
{
    inteiro votosHerbert = 0
    inteiro votosRibeiro = 0
    inteiro votosBrancoPrefeito = 0
    inteiro votosNuloPrefeito = 0
    inteiro votosBarone = 0
    inteiro votosBidu = 0
    inteiro votosMonteiro = 0
    inteiro votosJoaoFera = 0
    inteiro votosBrancoVereador = 0
    inteiro votosNuloVereador = 0
    inteiro votosBaroneParaTransferir = 0 
    funcao inicio()
    {
        inteiro senhaCorreta = 2411
        inteiro senhaDigitada
        inteiro opcao
        inteiro votoPrefeito
        inteiro votoVereador

        escreva("A senha de acesso � 2411.\n")

        enquanto (verdadeiro)
        {
            escreva("Digite a senha de acesso: ")
            leia(senhaDigitada)
            
            se (senhaDigitada == senhaCorreta)
            {
                escreva("Senha correta. Sistema inicializado.\n")
                pare 
            }
            senao
            {
                escreva("Senha incorreta. Tente novamente.\n")
            }
        }
       
        enquanto (verdadeiro)
        {
            escreva("Digite 1 para iniciar a vota��o ou 0 para encerrar a vota��o: ")
            leia(opcao)

            se (opcao == 1)
            {
                escreva("Iniciando a vota��o...\n\n")
                
                escreva("Vote em seu candidato a Prefeito:\n\n")
                escreva("Herbert � n�mero 90\n")
                escreva("Ribeiro � n�mero 95\n")
                escreva("Digite 0 para votar em branco ou qualquer outro n�mero para voto nulo\n\n")
                escreva("Digite o n�mero do candidato: ")
                leia(votoPrefeito)

                se (votoPrefeito == 90)
                {
                    escreva("Voc� votou em Herbert.\n")
                    votosHerbert++
                }
                senao se (votoPrefeito == 95)
                {
                    escreva("Voc� votou em Ribeiro.\n")
                    votosRibeiro++
                }
                senao se (votoPrefeito == 0)
                {
                    escreva("Voc� votou em branco para prefeito.\n")
                    votosBrancoPrefeito++
                }
                senao
                {
                    escreva("Voc� votou nulo para prefeito.\n")
                    votosNuloPrefeito++
                }

                escreva("\nVote em seu candidato a Vereador:\n\n")
                escreva("Barone � n�mero 90000\n")
                escreva("Bidu � n�mero 90999\n")
                escreva("Monteiro � n�mero 95000\n")
                escreva("Jo�o Fera � n�mero 95999\n")
                escreva("Digite 0 para votar em branco ou qualquer outro n�mero para voto nulo\n\n")
                escreva("Digite o n�mero do candidato: ")
                leia(votoVereador)

                se (votoVereador == 90000)
                {
                    escreva("Voc� votou em Barone.\n")
                    votosBarone++
                    votosBaroneParaTransferir++

                    se (votosBaroneParaTransferir % 3 == 0)
                    {
                        votosBarone--
                        votosBidu++
                    }
                }
                senao se (votoVereador == 90999)
                {
                    escreva("Voc� votou em Bidu.\n")
                    votosBidu++
                }
                senao se (votoVereador == 95000)
                {
                    escreva("Voc� votou em Monteiro.\n")
                    votosMonteiro++
                }
                senao se (votoVereador == 95999)
                {
                    escreva("Voc� votou em Jo�o Fera.\n")
                    votosJoaoFera++
                }
                senao se (votoVereador == 0)
                {
                    escreva("Voc� votou em branco para vereador.\n")
                    votosBrancoVereador++
                }
                senao
                {
                    escreva("Voc� votou nulo para vereador.\n")
                    votosNuloVereador++
                }
            }
            senao se (opcao == 0)
            {
                escreva("Vota��o encerrada. Imprimindo resultados...\n\n")
                
                escreva("\nResultado final da vota��o para Prefeito:\n")
                escreva("Herbert: ", votosHerbert, " votos\n")
                escreva("Ribeiro: ", votosRibeiro, " votos\n")
                escreva("Votos em Branco para Prefeito: ", votosBrancoPrefeito, "\n")
                escreva("Votos Nulos para Prefeito: ", votosNuloPrefeito, "\n")

                escreva("\nResultado final da vota��o para Vereador:\n")
                escreva("Barone: ", votosBarone, " votos\n")
                escreva("Bidu: ", votosBidu, " votos\n")
                escreva("Monteiro: ", votosMonteiro, " votos\n")
                escreva("Jo�o Fera: ", votosJoaoFera, " votos\n")
                escreva("Votos em Branco para Vereador: ", votosBrancoVereador, "\n")
                escreva("Votos Nulos para Vereador: ", votosNuloVereador, "\n")

                escreva("\n")
                se (votosHerbert > votosRibeiro)
                {
                    escreva("Prefeito eleito: Herbert\n")
                }
                senao se (votosRibeiro > votosHerbert)
                {
                    escreva("Prefeito eleito: Ribeiro\n")
                }
                senao
                {
                    escreva("Empate na elei��o para prefeito.\n")
                }

                escreva("\n")
                se (votosBarone > votosBidu e votosBarone > votosMonteiro e votosBarone > votosJoaoFera)
                {
                    escreva("Vereador mais votado: Barone\n")
                }
                senao se (votosBidu > votosBarone e votosBidu > votosMonteiro e votosBidu > votosJoaoFera)
                {
                    escreva("Vereador mais votado: Bidu\n")
                }
                senao se (votosMonteiro > votosBarone e votosMonteiro > votosBidu e votosMonteiro > votosJoaoFera)
                {
                    escreva("Vereador mais votado: Monteiro\n")
                }
                senao se (votosJoaoFera > votosBarone e votosJoaoFera > votosBidu e votosJoaoFera > votosMonteiro)
                {
                    escreva("Vereador mais votado: Jo�o Fera\n")
                }
                senao
                {
                    escreva("Empate na elei��o para vereador.\n")
                }

                pare
            }
            senao
            {
                escreva("Op��o inv�lida. Tente novamente.\n")
            }
        }
    }
}
