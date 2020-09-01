# Se necesita crear un programa llamado filtro_procesos.rb que lea un archivo que tiene datos por
# línea. Estos datos representan la cantidad de milisegundos que demoran en terminar algunos
# procesos del sistema operativo.

# Ejemplo de archivo
# procesos.data

# Se necesita un programa que pueda leer un archivo de las mismas características y generar un
# archivo llamado procesos_filtrados.data donde todos los valores sean mayor a un número
# utilizar al cargar el programa.

# Uso:
# ruby filtro_procesos.rb 250
# Debe generar el archivo procesos_filtrados.data con:
# 299
# 312
# 412

# Tips:
# Puedes ocupar los datos del archivo procesos.data como base para crear tu archivo.
# En la corrección el archivo contendrá distintos datos al presentado.
# La revisión se realizará sobre el archivo generado, este tiene que generarse en el mismo
# directorio de trabajo.


data = open("procesos.data").readlines
data_user = ARGV[0].to_i

data.map! do | e |
    e = e.chomp.to_i
end

filtered_array = data.reject { | e | e < data_user }

File.open( "procesos_filtrados.data", "a") do | file |
    filtered_array.each do | e |
        file << "#{e}\n"
    end
end