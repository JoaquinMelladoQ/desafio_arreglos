
visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(param)

    sum = 0
    param.each do |i|
        sum += i
    end
    return sum / param.length
end

print promedio(visitas)