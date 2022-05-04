# Ayudantia 04/05/2022 18:00 - 21:00hrs G3-Introducción a la Programación Con Ruby

*Se tienen los siguientes archivos *

1. **clientes.txt** -> contiene un listado de clientes, donde cada fila corresponde a un cliente y las columnas a un dato en particular del cliente.

2. **planes.txt** -> corresponde a un listado de los tipos de planes que ofrece la empresa.

3. **bonos.txt** -> correponde a valores sin cobrar por parte del cliente (un cliente solo tendra como maximo un bono).


------------


*Con la Siguiente Estructura:*

**clientes.txt**
rut;nombre;apellido;ufs;plan_id

**planes.txt**
id;nombre

**bonos.txt**
rut,monto$

------------

1) Al momento de llamar el programa se indicara el valor de la uf.

2) Se pide leer desde la fuente de datos, para retornar un nuevo archivo llamado output.txt, el cual cada fila correspondera a cada cliente y las columnas ha de tener la siguiente estructura. 

> **rut**|**nombre completo**|**cantidad_de_ufs**|**cantidad_de_ufs * ARGV[0]**|**nombre_del_plan**|**bono_a_cobrarrut**|**nombre completo**| **cantidad_de_ufs**|**cantidad_de_ufs * ARGV[0]**|**nombre_del_plan**|**bono_a_cobrar**


Editor On Line MARKDOWN : https://markdown-editor.github.io/