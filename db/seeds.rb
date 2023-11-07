puts 'Gerando ecomponents...'

5.times do |i|
  Ecomponent.create(
    name: ["resistor", "menristor", "potenciometro"].sample ,
    unity: "ohms"
    )
end

puts 'ecomponents gerados com sucesso!'