# Crear el programa visitas.rb que dada la información de visitas diarias a un sitio web pueda
# entregar cierta información.
# Se pide:
# Crear un método llamado promedio que devuelva la cantidad promedio de visitas en el arreglo.
# Tips:
# La Corrección del ejercicio funciona llamando al método promedio , por lo que el método tiene
# que existir y el valor ser el promedio de cualquier arreglo entregado.
# Puedes probar el programa llamando al método y mostrando el resultado pero no es necesario
# que el programa entregue resultado alguno, la revisión se hace llamando al método.

visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(param)

    sum = 0
    param.each do |i|
        sum += i
    end
    return sum / param.length
end

print promedio(visitas)