class Veiculo(object):
    def __init__(self, Nome):
        self.Nome = Nome
    def getName(self):
        return self.Nome
    def setName(self, nome):
        self.Nome = nome.upper()
v = Veiculo('Nenhum')
v.setName(input('Digite aqui se você deseja saber qual o número de rodas de CARRO ou MOTO\n'))
error = int(1)
while error != 0:
    if v.getName() == 'MOTO':
        print('Este veículo possui 2 rodas')
        break
    elif v.getName() == 'CARRO':
        print('Este veículo possui 4 rodas')
        break
    else:
        v.setName(input('Tipo de veículo não encontrado, insira novamente se deseja saber o número de rodas para CARRO ou MOTO, se deseja encerrar digite 0\n'))
        try:
            if int(v.getName()) == 0:
                error = 0
                print('Operação finalizada\n')
        except:
            continue
