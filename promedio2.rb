# Crear el programa promedio2.rb con el método compara_arrays que reciba 2 arreglos y calcule
# el promedio de ambos, devolviendo el mayor de los promedios.
# Uso:
# 

# Tips:
# Ocupar los métodos de array y string que estudiamos.
# Puedes ocupar el método para calcular el promedio del ejercicio anterior, pero debes agregarlo al
# archivo nuevo.
# Debes respetar el nombre del método
# Puedes probar el programa llamando al método y mostrando el resultado pero no es necesario
# que el programa entregue resultado alguno, la revisión se hace llamando al método.

param_a = [10, 9, 9, 10, 8, 5, 6, 8, 10]
param_b = [4, 3, 2, 1, 0, 4, 5, 4, 2]


def promedio( param )

    sum = 0
    param.each do | i |
        sum += i
    end
    return sum / param.length

end

def compara_arrays( param_a, param_b )

    promedio_a = promedio( param_a )
    promedio_b = promedio( param_b )

    if ( promedio_a > promedio_b )
        return promedio_a
    elsif ( promedio_b > promedio_a )
        return promedio_b
    else
        return ''
    end

end

print compara_arrays( param_a, param_b )



