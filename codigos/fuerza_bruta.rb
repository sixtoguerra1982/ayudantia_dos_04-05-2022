=begin
 Se busca crear un programa fuerza_bruta.rb querevisecuantosintentosrequierehackear
 un password por fuerza bruta.
=end

# cuantas vueltas se tiene que hacer, para llegar al "password" ingresado.

def gen(password)
    cont = 0
    cadena_inicial = "a"
#     while cadena_inicial != password   
     until cadena_inicial == password
       cadena_inicial = cadena_inicial.next
       cont += 1
     end
    return cont
 end

 password = ARGV[0]
 puts "#{gen(password)} Intentos" 
