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

require "byebug"

def read_file(ruta)
    File.open(ruta).read
end

def sort_client(value_uf)
    # rut|nombre completo|cantidad_de_ufs|cantidad_de_ufs * ARGV[0]

    # |nombre_del_plan|bono_a_cobrar
    # creo 2 arreglos por cada item (plan y bono) , uno para manejar el codigo y otro su valor 
    plan_array_id = []
    plan_array_nombre = []
    planes = read_file("../datos/planes.txt").split.each do |plan|
        plan_array_id.push plan.split(";")[0].to_i
        plan_array_nombre.push plan.split(";")[1]
    end

    bono_array_rut = []
    bono_array_monto = []
    bonos = read_file("../datos/bonos.txt").split.each do |bono|
        bono_array_rut.push bono.split(";")[0]
        bono_array_monto.push bono.split(";")[1].to_i
    end
    #########
    clientes = read_file("../datos/clientes.txt")
    cliente = clientes.split
    output = ""
    
    cliente.each do |cliente|
        cliente_array = cliente.split(";")
        # ver el nombre del plan y bono a cobrar
        #Buscar plan del cliente
        plan_cliente = cliente_array[4].to_i
        plan = plan_array_id.include?(plan_cliente) ? plan_array_nombre[plan_array_id.index(plan_cliente)] : "No Encontrado"
        ####
        ##Buscar Rut de bono
        rut_cliente = cliente_array[0]
        bono = bono_array_rut.include?(rut_cliente) ? bono_array_monto[bono_array_rut.index(rut_cliente)].to_i : 0
        ##
        output += "#{cliente_array[0]}|#{cliente_array[1] + " " + cliente_array[2]}|#{cliente_array[3]}|#{(cliente_array[3].to_f * value_uf).truncate(2)}|#{plan}|#{bono} \n"
    end
    File.write("output.txt",output)
end

sort_client(ARGV[0].to_i)
puts

# planes = read_file("../datos/planes.txt")
# # puts planes
# bonos = read_file("../datos/bonos.txt")
# puts bonos