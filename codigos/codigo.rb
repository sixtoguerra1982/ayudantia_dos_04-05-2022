# n = ARGV[0].to_i

# def cliclos(n,nombre="NN")
#     for i in 2..n
#         puts "#{i}"
#     end
    
#     n.times do |i|
#         puts "#{i}"
#     end
    
#     if nombre == "NN"
#         "no me pasaron nombre"
#     else    
#         nombre 
#     end    
# end

# puts cliclos(n,"Carlos")

def recorrer_arreglo(array)
    array.each do |item|
        print "#{item} \n"
    end
end

x = ["Luis","Alejandro","Camila","Andrea"]
recorrer_arreglo(x)