=begin
Con la Siguiente Estructura:

clientes.txt rut;nombre;apellido;ufs;plan_id

planes.txt id;nombre

bonos.txt rut,monto$

Al momento de llamar el programa se indicara el valor de la uf.

Se pide leer desde la fuente de datos, para retornar un nuevo archivo llamado output.txt, el cual cada fila correspondera a cada cliente y las columnas ha de tener la siguiente estructura.

rut|nombre completo|cantidad_de_ufs|cantidad_de_ufs * ARGV[0]|nombre_del_plan|bono_a_cobrarr
=end

#abrir el archivo

# ordenar los datos de cada lectura

def read_file(ruta)
    File.open(ruta).read
end

def sort_client(value_uf)
    clientes = read_file("../datos/clientes.txt")
    cliente = clientes.split
    output = ""
    # rut|nombre completo|cantidad_de_ufs|cantidad_de_ufs * ARGV[0]
    # |nombre_del_plan|bono_a_cobrar
    cliente.each do |cliente|
        cliente_array = cliente.split(";")
        # ver el nombre del plan y bono a cobrar
          plan_cliente = cliente[4]

        ##
        output += "#{cliente_array[0]}|#{cliente_array[1] + " " + cliente_array[2]}|#{cliente_array[3]}|#{(cliente_array[3].to_f * value_uf).truncate(2)} \n"
    end
    File.write("output.txt",output)
end

sort_client(ARGV[0].to_i)
puts

# planes = read_file("../datos/planes.txt")
# # puts planes
# bonos = read_file("../datos/bonos.txt")
# puts bonos