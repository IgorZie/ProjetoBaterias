algoritmo "ProjetoBaterias_AA"

Tipo
   infoC = registro
      NomeCliente: caractere
      Patrimonio: caractere
      Numbateria: caractere
      TensaoBateria: inteiro
      CapBateria: inteiro
      Fabricante: caractere
      CodigoBat: inteiro
   Fimregistro

   infoOS = registro
      CodigoOS: inteiro
      CodBateria: inteiro
      NFOS: caractere
      DataOS: caractere
      Cabo, Conector: caractere
      Status: inteiro
      PosiElemento: inteiro
      PosicaoMed: inteiro
      StatusFinal: caractere
      Carregador: inteiro
      QuadroTeste: inteiro
      HorarioTeste, DataTeste: caractere
      StatusTeste: inteiro
   Fimregistro

   QuadroElem = registro
      H1, H2, H3, H4, H5: real
   Fimregistro

   CarregadorInfo = registro
      CarregadorOS: inteiro
   Fimregistro

   QuadroInfo = registro
      QuadroOS: inteiro
   Fimregistro
   ///////////////////////////////////////////////////


Procedimento menu()
var
   op: inteiro
inicio
   Enquanto op <> 9 faca
      //Quadro de carregadores
      //Quadro de status de O.S
      logo()
      QuadroCarregadores()
      QuadroTeste()
      QuadroStatus()
      Escreval()
      Escreval()
      Escreval("                 - - - - - - - - - - - - - - - - - - - ")
      Escreval("                 |           MENU PRINCIPAL           |")
      Escreval("                 |                                    |")
      Escreval("                 |     [1] Cadastrar bateria          |")
      Escreval("                 |     [2] Abrir O.S                  |")
      Escreval("                 |     [3] Alterar status da O.S      |")
      Escreval("                 |     [4] Cancelar O.S               |")
      Escreval("                 |     [5] Finalizar O.S              |")
      Escreval("                 |     [6] Histórico de O.S           |")
      Escreval("                 |     [7] Histórico de baterias      |")
      Escreval("                 |                                    |")
      Escreval("                 |     [9] Sair                       |")
      Escreval("                 - - - - - - - - - - - - - - - - - - - ")
      Escreva("                                Opção: ")
      Leia(op)
      Escolha op
      Caso 1
         Limpatela
         CadastrarBateria()
      Caso 2
         Limpatela
         AbrirOS()
      Caso 3
         Limpatela
         MenuStatus()
      Caso 4
         Limpatela
         CancelarOS()
      Caso 5
         Limpatela
         FinalizarOS()
      Caso 6
         Limpatela
         HistoricoOS()
      Caso 7
         Limpatela
         HistoricoBateria()
      Caso 9
         Limpatela
         interrompa
      OutroCaso
         Limpatela
         Escreval("Opção indisponível!")
      FimEscolha
   Fimenquanto
Fimprocedimento


Procedimento MenuStatus()
var
   op: inteiro
inicio
   Enquanto op <> 9 faca
      //Quadro de Status da O.S
      QuadroCarregadores()
      QuadroTeste()
      QuadroStatus()
      Escreval("")
      Escreval("")
      Escreval("          - - - - - - - - - - - - - - - - - - -")
      Escreval("          |          ALTERAR STATUS           |")
      Escreval("          |                                   |")
      Escreval("          |     [1] Carregar bateria          |")
      Escreval("          |     [2] Iniciar teste             |")
      Escreval("          |     [3] Aprovado para conserto    |")
      Escreval("          |                                   |")
      Escreval("          |     [9] Voltar ao menu principal  |")
      Escreval("          - - - - - - - - - - - - - - - - - - -")
      Escreva("                          Opção: ")
      Leia(op)
      Escolha op
      Caso 1
         Limpatela
         NumCarregador()
      Caso 2
         Limpatela
         IniciarTeste()
      Caso 3
         Limpatela
         Aprovado()
      Caso 9
         Limpatela
      Outrocaso
         Limpatela
         Escreval("Opção indisponível")
      Fimescolha
   Fimenquanto
Fimprocedimento


Procedimento CadastrarBateria()
var
   p, C: caractere
   x, achei: inteiro
inicio
   Limpatela
   Escreval("-----------------------------")
   Escreval("   CADASTRO DE BATERIAS      ")
   Escreval("-----------------------------")
   Escreva("Nome do cliente: ")
   Leia(C)
   Escreva("Patrimônio: ")
   Leia(p)
   para x de 1 ate cont1 faca
      se (p = CadastroBat[x].Patrimonio) e (C = CadastroBat[x].NomeCliente) entao
         Escreval("Bateria já cadastrada!")
         achei <- 1
      Fimse
   Fimpara
   se (achei = 0) entao
      cont1 <- cont1 + 1
      CadastroBat[cont1].CodigoBat <- cont1
      CadastroBat[cont1].Patrimonio <- p
      CadastroBat[cont1].NomeCliente <- C
      Escreva("Número da bateria: ")
      Leia(CadastroBat[cont1].NumBateria)
      Escreva("Tensão da bateria: ")
      Leia(CadastroBat[cont1].TensaoBateria)
      Escreva("Capacidade da bateria: ")
      Leia(CadastroBat[cont1].CapBateria)
      Escreva("Fabricante: ")
      Leia(CadastroBat[cont1].Fabricante)
      CodigoBateria <- CadastroBat[cont1].CodigoBat
      Limpatela
   Fimse
Fimprocedimento

Procedimento HistoricoBateria()
var
   achei, y, x,pause,Op,z,temp2,temp3: inteiro
   n,temp,temp1,temp4,temp5: caractere
inicio
   Enquanto Op <> 9 faca
      Escreval()
      Escreval("     - - - - - - - - - - - - - - - - -")
      Escreval("     |       HISTÓRICO DE BATERIAS   |")
      Escreval("     |                               |")
      Escreval("     | [1] Procurar por cliente      |")
      Escreval("     | [2] Listar baterias           |")
      Escreval("     |                               |")
      Escreval("     | [9] Voltar ao menu principal  |")
      Escreval("     - - - - - - - - - - - - - - - - -")
      Escreva("                  Opção: ")
      Leia(Op)
      achei <- 0
      Escolha Op
      Caso 1
         Limpatela
         Escreva("Nome do cliente: ")
         Leia(n)
         para y de 1 ate cont1 faca
            se (n = CadastroBat[y].NomeCliente) entao
               Escreval("Patrimônio: ",CadastroBat[y].Patrimonio)
               Escreval("Tensão da bateria: ",CadastroBat[y].TensaoBateria,"V")
               Escreval("Capacidade da bateria: ",CadastroBat[y].CapBateria," Ah/5h")
               Escreval("Número da bateria: ",CadastroBat[y].Numbateria)
               Escreval("Fabricante: ",CadastroBat[y].Fabricante)
               Escreval("------------------------------------")
               achei <- 1
            Fimse
         Fimpara
         se (achei = 0) entao
            Escreval("Cliente não encontrado!")
            Escreval("------------------------------------")
         Fimse
      Caso 2
         Limpatela
         para x de 1 ate cont1 faca
            para z de x+1 ate cont1 faca
               se CadastroBat[x].NomeCliente > CadastroBat[z].NomeCliente entao
                  temp <- CadastroBat[x].NomeCliente
                  CadastroBat[x].NomeCliente <- CadastroBat[z].NomeCliente
                  CadastroBat[z].NomeCliente <- temp

                  temp1 <- CadastroBat[x].Patrimonio
                  CadastroBat[x].Patrimonio <- CadastroBat[z].Patrimonio
                  CadastroBat[z].Patrimonio <- temp1
                  temp2 <- CadastroBat[x].TensaoBateria
                  CadastroBat[x].TensaoBateria <- CadastroBat[z].TensaoBateria
                  CadastroBat[z].TensaoBateria <- temp2
                  temp3 <- CadastroBat[x].CapBateria
                  CadastroBat[x].CapBateria <- CadastroBat[z].CapBateria
                  CadastroBat[z].CapBateria <- temp3
                  temp4 <- CadastroBat[x].Numbateria
                  CadastroBat[x].Numbateria <- CadastroBat[z].Numbateria
                  CadastroBat[z].Numbateria <- temp4
                  temp5 <- CadastroBat[x].Fabricante
                  CadastroBat[x].Fabricante <- CadastroBat[z].Fabricante
                  CadastroBat[z].Fabricante<- temp5
               fimse
            Fimpara
         Fimpara
         para x de 1 ate cont1 faca
            Escreval("Nome do cliente: ",CadastroBat[x].NomeCliente)
            Escreval("Patrimônio: ",CadastroBat[x].Patrimonio)
            Escreval("Tensão da bateria: ",CadastroBat[x].TensaoBateria,"V")
            Escreval("Capacidade da bateria: ",CadastroBat[x].CapBateria," Ah/5h")
            Escreval("Número da bateria: ",CadastroBat[x].Numbateria)
            Escreval("Fabricante: ",CadastroBat[x].Fabricante)
            Escreval("------------------------------------")
         Fimpara
         Escreval("  APERTE ENTER PARA VOLTAR AO MENU ")
         Leia(pause)
         Limpatela
      Caso 9
         Limpatela
      Outrocaso
         Limpatela
         Escreval("Opção indisponivel!")
      Fimescolha

   Fimenquanto

FimProcedimento


Procedimento AbrirOS()
var
   C, P: caractere
   x, achei, CA, CO, pause: inteiro
inicio
   Escreval("     ------------------")
   Escreval("     |    ABRIR O.S   |")
   Escreval("     ------------------")
   Escreval()
   Escreva("Nome do cliente: ")
   Leia(C)
   Escreva("Patrimônio da bateria: ")
   Leia(P)
   achei <- 0
   para x de 1 ate cont1 faca
      se (C = CadastroBat[x].NomeCliente) e (P = CadastroBat[x].Patrimonio) entao
         achei <- 1
         CodigoBateria <- x
      Fimse
   Fimpara
   se (achei = 0)entao
      Escreval("Não encontrado no sistema!")
      Escreval("-------------------------")
      Escreva("APERTE ENTER PARA CADASTRAR!")
      Leia(pause)
      CadastrarBateria()
   Fimse
   cont2 <- cont2 + 1
   OS[cont2].CodigoOS <- cont2
   OS[cont2].CodBateria <- CodigoBateria
   OS[cont2].PosiElemento <- (CadastroBat[CodigoBateria].TensaoBateria div 2)
   OS[cont2].PosicaoMed <- PosiInicial + 1
   PosiInicial <- OS[cont2].PosiElemento + PosiInicial
   Escreva("Data de abertura de O.S: ")
   Leia(OS[cont2].DataOS)
   Escreva("Nota fiscal: ")
   Leia(OS[cont2].NFOS)
   Enquanto (CA <> 1) e (CA <> 2) faca
      Escreval("---------------------")
      Escreval("      TEM CABO?      ")
      Escreval("[1] SIM ")
      Escreval("[2] NÃO ")
      Escreva("Opção: ")
      Leia(CA)
      Escolha CA
      Caso 1
         OS[cont2].Cabo <- "SIM"
      Caso 2
         OS[cont2].Cabo <- "NÃO"
      OutroCaso
         Limpatela
         Escreval("Opção indisponível")
      FimEscolha
   Fimenquanto
   Enquanto (CO <> 1) e (CO <> 2) faca
      Escreval("---------------------")
      Escreval("    TEM CONECTOR?    ")
      Escreval("[1] SIM ")
      Escreval("[2] NÃO ")
      Escreva("Opção: ")
      Leia(CO)
      Escolha CO
      Caso 1
         OS[cont2].Conector <- "SIM"
      Caso 2
         OS[cont2].Conector <- "NÃO"
      OutroCaso
         Limpatela
         Escreval("Opção indisponível")
      FimEscolha
   Fimenquanto
   OS[cont2].Status <- 1
   Limpatela
Fimprocedimento

Procedimento QuadroCarregadores()
var
   x1,y1, preencher:inteiro
   info:caracter
inicio
   Escreval("                 CARREGADORES")
   Escreval("")
   Escreval("    C1   ","    C2   ","    C3   ","    C4   ","    C5   ")
   Escreval(" --------"," --------"," --------"," --------"," --------")

   Para x1 de 1 ate 5 Faca
      Se  Carregador[x1].CarregadorOS = 0 Entao
         info <- " "
      Senao
         info <-  Numpcarac ( Carregador[x1].CarregadorOS )
      Fimse
      Escreva("| OS:",info)
      preencher <- 4 - compr (numpcarac( Carregador[x1].CarregadorOS) )
      Para y1 de 1 ate preencher faca
         Escreva(" ")
      Fimpara

   Fimpara
   Escreva("|")
   Escreval("")
   Escreval(" --------"," --------"," --------"," --------"," --------")
   Escreval()
Fimprocedimento


Procedimento QuadroTeste()
var
   x2,y2,preencher1:inteiro
   infoT :caracter
inicio
   Escreval("                   EM TESTE")
   Escreval("")
   Escreval("     T1  ","    T2   ")
   Escreval(" --------"," --------")

   Para x2 de 1 ate 2 Faca

      Se  Quadro[x2].QuadroOS  = 0 Entao
         infoT <- " "
      Senao
         infoT <-  Numpcarac ( Quadro[x2].QuadroOS  )
      Fimse
      escreva("| OS:",infoT)
      preencher1 <- 4 - compr (numpcarac( Quadro[x2].QuadroOS ) )
      para y2 de 1 ate preencher1 faca
         Escreva(" ")
      Fimpara
   Fimpara
   Escreva("|")
   Escreval("")
   Escreval(" --------"," --------")
   Escreval()

Fimprocedimento


Procedimento QuadroStatus()
var
   x: inteiro
inicio
   Escreval()

   Escreval("__________________________________________________________________")
   Escreval()
   Escreval("                 ORDENS DE SERVIÇOS ATIVAS")
   Escreval("")
   Escreval(" O.S           BARRA DE ANDAMENTO            STATUS DA O.S  ")
   Escreval("------------------------------------------------------------------")
   para x de 1 ate cont2 faca
      se (OS[x].Status <> 8) ou (OS[x].Status <> 9) entao
         se (OS[x].Status = 1) entao
            Escreval(OS[x].CodigoOS:2,"            O---O                          ABERTO ")
         Fimse
         se (OS[x].Status = 2) entao
            Escreval(OS[x].CodigoOS:2,"            O---O---O                      CARREGANDO ")
         Fimse
         se (OS[x].Status = 3) entao
            Escreval(OS[x].CodigoOS:2,"            O---O---O---O                  EM TESTE ")
         Fimse
         se (OS[x].Status = 4) entao
            Escreval(OS[x].CodigoOS:2,"            O---O---O---O---O              AGUARDANDO APROVAÇÃO ")
         Fimse
         se (OS[x].Status = 5) entao
            Escreval(OS[x].CodigoOS:2,"            O---O---O---O---O---O          EM CONSERTO ")
         Fimse
      Fimse
   Fimpara
   Escreval()

FimProcedimento


Procedimento NumCarregador()
var
   NO, x, achei, Car, encontrei, pause: inteiro
inicio
   QuadroCarregadores()
   QuadroStatus()
   Escreval("     ------------------ ")
   Escreval("    | CARREGAR BATERIA | ")
   Escreval("     ------------------ ")
   Escreva("Número da O.S: ")
   Leia(NO)
   para x de 1 ate cont2 faca
      se (NO = OS[x].CodigoOS) e (OS[x].Status = 1)  entao
         achei <- 1
      fimse
   Fimpara
   se (achei = 0) entao
      Limpatela
      Escreval("O.S não encontrada!")
   fimse
   se achei = 1 entao
      Escreva("Escolha o carregador: ")
      Leia(Car)
      se (Car > 5) ou (Car <= 0) entao
         Limpatela
         Escreval("Carregador inválido")
         OS[NO].Status <- 1
      senao
         se (Carregador[Car].CarregadorOS > 0) entao
            Limpatela
            Escreval("Carregador ocupado!")
            OS[NO].Status <- 1
         senao
            Carregador[Car].CarregadorOS <- NO
            OS[NO].Carregador <- Car
            OS[NO].Status <- 2
         Fimse
      Fimse
   Fimse
   Escreval("------------------------------------------------------------------")
   Escreval("                  APERTE ENTER PARA ATUALIZAR ")
   Leia(pause)
   Limpatela
Fimprocedimento


Procedimento Aprovado()
var
   NO, x, achei: inteiro
inicio
   QuadroStatus()
   Escreval("     ------------------ ")
   Escreval("    |    APROVAR O.S   | ")
   Escreval("     ------------------ ")
   Escreval("")
   Escreva("Número da O.S: ")
   Leia(NO)
   Limpatela
   para x de 1 ate cont2 faca
      se (NO = OS[x].CodigoOS) e (OS[x].Status = 4) entao
         OS[x].Status <- 5
         achei <- 1
      Fimse
   Fimpara
   se (achei = 0) entao
      Escreval("O.S não encontrada!")
   fimse
Fimprocedimento


Procedimento CancelarOS()
var
   NO, x, achei: inteiro

inicio
   QuadroStatus()
   Escreval("     ------------------ ")
   Escreval("    |   CANCELAR O.S   |")
   Escreval("     ------------------ ")
   Escreval()
   Escreva("Número da O.S: ")
   Leia(NO)
   Limpatela
   para x de 1 ate cont2 faca
      se (NO = OS[x].CodigoOS) e ((OS[x].Status <> 9) e (OS[x].Status <> 1) e (OS[x].Status <> 2)) entao
         OS[x].Status <- 8
         achei <- 1
         OS[x].StatusFinal <- "Cancelada"
      Fimse
   Fimpara
   se (achei = 0) entao
      Escreval("O.S não encontrada!")
   Fimse
Fimprocedimento


Procedimento FinalizarOS()
var
   NO, x, achei: inteiro
inicio
   QuadroStatus()
   Escreval("     ------------------ ")
   Escreval("    |   FINALIZAR O.S  |")
   Escreval("     ------------------ ")
   Escreval()
   Escreva("Número da O.S: ")
   Leia(NO)
   Limpatela
   para x de 1 ate cont2 faca
      se (NO = OS[x].CodigoOS) e ((OS[x].Status <> 8) e (OS[x].Status <> 1) e (OS[x].Status <> 2)) entao
         OS[x].Status <- 9
         achei <- 1
         OS[x].StatusFinal <- "Finalizada"
      Fimse
   Fimpara
   se (achei = 0) entao
      Escreval("O.S não encontrada!")
   Fimse
Fimprocedimento


Procedimento HistoricoOS()
var
   x, posicao_bat,  achei, op, y, pause: inteiro
   C, P: caractere
inicio
   Enquanto op <> 9 faca
      Escreval()
      Escreval("     - - - - - - - - - - - - - - - - -")
      Escreval("     |       HISTÓRICO DE O.S        |")
      Escreval("     |                               |")
      Escreval("     | [1] Procurar por cliente      |")
      Escreval("     |                               |")
      Escreval("     | [9] Voltar ao menu principal  |")
      Escreval("     - - - - - - - - - - - - - - - - -")
      Escreva("                  Opção: ")
      Leia(Op)
      achei <- 0
      Escolha op
      Caso 1
         Escreva("Nome do cliente: ")
         Leia(C)
         Escreva("Patrimônio: ")
         Leia(P)
         Limpatela
         para x de 1 ate cont2 faca
            posicao_bat <-  OS[x].codbateria
            se ((CadastroBat[posicao_bat].NomeCliente = C) e (CadastroBat[posicao_bat].Patrimonio = P)) e ((OS[x].Status = 8) ou (OS[x].Status = 9)) entao
               Escreval("Número da O.S: ",OS[x].CodigoOS)
               Escreval("Nome do cliente: ",CadastroBat[posicao_bat].NomeCliente,"                            Data: ",OS[x].DataOS)
               Escreval("Patrimônio: ",CadastroBat[posicao_bat].Patrimonio,"                              Nota Fiscal: ",OS[x].NFOS)
               Escreval("Nº da bateria: ",CadastroBat[posicao_bat].Numbateria)
               Escreval("Tensão: ",CadastroBat[posicao_bat].TensaoBateria,"V                             Capacidade: ",CadastroBat[posicao_bat].CapBateria,"Ah/5")
               Escreval("Fabricante: ",CadastroBat[posicao_bat].Fabricante)
               Escreval("Conector: ",OS[x].Conector,"                                  Cabo: ",OS[x].Cabo)
               Escreval("Status: ",OS[x].StatusFinal)
               Escreval()
               Medidor(OS[x].CodigoOS)
               Escreval("Data do teste: ",OS[x].DataTeste)
               Escreval("Horário do teste: ",OS[x].HorarioTeste)
               achei <- 1
               Escreval("------------------------------------------------------------------")
               Escreval("                APERTE ENTER PARA PRÓXIMA O.S ")
               Leia(pause)
               Limpatela
            Fimse
         fimpara
         se (achei = 0) entao
            Escreval("O.S não encontrada!")
         Fimse
         Escreval("------------------------------------------------------------------")
         Escreval("               APERTE ENTER PARA VOLTAR AO MENU ")
         Leia(pause)
         Limpatela
      Caso 9
         Limpatela
      Outrocaso
         Escreval("Opção indisponível!")
      Fimescolha
   Fimenquanto
Fimprocedimento



procedimento IniciarTeste()
var
   NO, x, achei, QD, pause: inteiro
inicio
   QuadroCarregadores()
   QuadroTeste()
   QuadroStatus()
   Escreva("Número da O.S: ")
   Leia(NO)
   para x de 1 ate cont2 faca
      se (NO = OS[x].CodigoOS) e (OS[x].Status = 2)  entao
         achei <- 1
      Fimse
   Fimpara
   se (achei = 0) entao
      Limpatela
      Escreval("O.S não encontrada!")
   Fimse
   Escolha OS[NO].Status
   Caso 2
      Escreva("Escolha o quadro: ")
      Leia(QD)
      se (QD > 2) ou (QD <= 0) entao
         Limpatela
         Escreval("Quadro inválido")
      senao
         se (Quadro[QD].QuadroOS > 0) entao
            Limpatela
            Escreval("Quadro ocupado!")
         senao
            Quadro[QD].QuadroOS <- NO
            OS[NO].QuadroTeste <- QD
            Escreva("Data do teste: ")
            Leia(OS[NO].DataTeste)
            Escreva("Horário do teste: ")
            Leia(OS[NO].HorarioTeste)
            OS[NO].Status <- 3
            OS[NO].StatusTeste <- 1
            se OS[NO].Carregador > 0 entao
               Carregador[OS[NO].Carregador].CarregadorOS <- 0
               OS[NO].Carregador <- 0
            fimse
         Fimse
      Fimse
      Escreval("------------------------------------------------------------------")
      Escreval("                 APERTE ENTER PARA ATUALIZAR ")
      Leia(pause)
      Limpatela
   Caso 3
      Escolha OS[NO].StatusTeste
      Caso 1
         ComecarTeste(NO,OS[NO].StatusTeste)
      Caso 2
         ComecarTeste(NO,OS[NO].StatusTeste)
      Caso 3
         ComecarTeste(NO,OS[NO].StatusTeste)
      Caso 4
         ComecarTeste(NO,OS[NO].StatusTeste)
      Caso 5
         ComecarTeste(NO,OS[NO].StatusTeste)
      Fimescolha
   Caso 4
      Limpatela
      Escreval("                  O.S aguardando aprovação!")
      Escreval("------------------------------------------------------------------")
      Escreval("                 APERTE ENTER PARA ATUALIZAR ")
      Leia(pause)
      Limpatela
   Fimescolha
fimprocedimento


procedimento ComecarTeste(NumO, Num:inteiro)
var
   x, op, cont: inteiro
inicio
   cont <- 0
   Escolha Num
   Caso 1
      Limpatela
      Medidor(NumO)
      Escreval("Hora 1")
      para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca
         cont <- cont + 1
         Escreva(cont,"º elemento: ")
         Leia(Medicao[x].H1)
      Fimpara
   Caso 2
      Limpatela
      Medidor(NumO)
      Escreval("Hora 2")
      para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca
         cont <- cont + 1
         Escreva(cont,"º elemento: ")
         Leia(Medicao[x].H2)
      Fimpara
   Caso 3
      Limpatela
      Medidor(NumO)
      Escreval("Hora 3")
      para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca
         cont <- cont + 1
         Escreva(cont,"º elemento: ")
         Leia(Medicao[x].H3)
      Fimpara
   Caso 4
      Limpatela
      Medidor(NumO)
      Escreval("Hora 4")
      para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca
         cont <- cont + 1
         Escreva(cont,"º elemento: ")
         Leia(Medicao[x].H4)
      Fimpara
   Caso 5
      Limpatela
      Medidor(NumO)
      Escreval("Hora 5")
      para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca
         cont <- cont + 1
         Escreva(cont,"º elemento: ")
         Leia(Medicao[x].H5)
      Fimpara
      OS[NumO].Status <- 4
      Quadro[OS[NumO].QuadroTeste].QuadroOS <- 0
      OS[NumO].QuadroTeste <- 0
   Fimescolha
   Escreval("----------------------")
   Escreval("[1] Continuar ")
   Escreval("[2] Finalizar teste")
   Escreva("Opção: ")
   Leia(op)
   Limpatela
   Escolha op
   Caso 1
      OS[NumO].StatusTeste <- OS[NumO].StatusTeste + 1
   Caso 2
      OS[NumO].Status <- 4
      Quadro[OS[NumO].QuadroTeste].QuadroOS <- 0
      OS[NumO].QuadroTeste <- 0
   FimEscolha
Fimprocedimento


procedimento Medidor(NumO: inteiro)
var
   x, y, z:inteiro
inicio

   escreval("   |  H1  |  H2  |  H3  |  H4  |  H5  |")
   escreval("---------------------------------------")

   //escreval( "PosiMed: ",OS[NumO].PosicaoMed)
   //escreval("PosiElemento: ", OS[NumO].PosiElemento)
   z<-1

   para x de OS[NumO].PosicaoMed  ate ((OS[NumO].PosicaoMed + OS[NumO].PosiElemento)-1) faca

      se x <  10 entao
         escreva(z:2, " |")

      senao
         escreva(z:1, " |")
      fimse

      para y de 1 ate 5 faca

         se y = 1 entao
            escreva(" ", Medicao[x].H1:2:2, " |")
         fimse

         se y = 2 entao
            escreva(" ", Medicao[x].H2:2:2, " |")
         fimse

         se y = 3 entao
            escreva(" ", Medicao[x].H3:2:2, " |")
         fimse

         se y = 4 entao
            escreva(" ", Medicao[x].H4:2:2, " |")
         fimse

         se y = 5 entao
            escreva(" ", Medicao[x].H5:2:2, " |")
         fimse


      fimpara

      Escreval
      Escreval("---------------------------------------")
      z<- z+1
   fimpara

fimprocedimento


procedimento logo()
inicio
   Escreval("      _____              ______         _    _                       ")
   Escreval("     |  ___|             | ___ \       | |  | |                      ")
   Escreval("     | |__    ___   ___  | |_/ /  __ _ | |_ | |_   ___  _ __  _   _  ")
   Escreval("     |  __|  / __| / _ \ | ___ \ / _` || __|| __| / _ \| '__|| | | | ")
   Escreval("     | |___ | (__ | (_) || |_/ /| (_| || |_ | |_ |  __/| |   | |_| | ")
   Escreval("     \____/  \___| \___/ \____/  \__,_| \__| \__| \___||_|    \__, | ")
   Escreval("                                                               __/ | ")
   Escreval("                                                              |___/  ")
fimprocedimento


var //Global
   CadastroBat: vetor[1..20] de infoC
   OS: vetor[1..20] de infoOS
   Medicao: vetor[1..500] de QuadroElem
   cont1, cont2: inteiro
   CodigoBateria: inteiro
   Carregador: vetor[1..5] de CarregadorInfo
   Quadro: vetor[1..2] de QuadroInfo
   PosiInicial: inteiro
inicio



   menu()

fimalgoritmo