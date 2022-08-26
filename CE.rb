# Quantas cédulas de cada nota são necessárias para somar uma quantidade x
# de dinheiro de forma que o cliente receba o menor número de cédulas possível?
# Considere que o caixa dispõe de uma quantidade ilimitada de notas de 2, 5, 10, 20, 50 e 100 reais.

# Para R$ 107,00:
# 1 * R$   2,00
# 1 * R$   5,00
# 0 * R$  10,00
# 0 * R$  50,00
# 1 * R$ 100,00

# FIX ME
def calculate_cedulas(payment)
  cedulas_arr = [2, 5, 10, 20, 50, 100]
  notas_arr = []

  cedulas_arr.each do |cedula|
    while payment >= cedula
      payment -= cedula
      notas_arr << cedula

      break if payment.zero?
    end
  end
end

puts calculate_cedulas(107)
