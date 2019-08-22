automovel = input('Digite aqui se você deseja saber qual o número de rodas de CARRO ou MOTO\n')
error = int(1)
while error != 0:
    if automovel.upper() == 'MOTO':
        print('Este veículo possui 2 rodas')
        break
    elif automovel.upper() == 'CARRO':
        print('Este veículo possui 4 rodas')
        break
    else:
        automovel = input('Tipo de veículo não encontrado, insira novamente se deseja saber o número de rodas para CARRO ou MOTO, se deseja encerrar digite 0\n')
        try:
            if int(automovel) == 0:
                error = 0
                print('Operação finalizada\n')
        except:
            continue
