
pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

def clear_steps(param)
    param_b = []
    param.each do |e|
        e = e.to_i
        e = e.class == Integer && e > 200 && e < 10000 ? param_b.push(e) : 'wrong'
    end
    return param_b
end

print clear_steps(pasos)

