
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