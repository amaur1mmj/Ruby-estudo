family = {
    uncles: ['bob',"joe","steve"],
    sisters: ['jane',"jill","beth"],
    brothers: ['frank',"rob","david"],
    aunts: ['mary',"sally","susan"]
}

last = []

immediate_family = family.select do |k,v|
   if k == :sisters || k == :brothers 
        last.push(v[-1])
   end
end

arr = immediate_family.values

p arr, last


# fiz isso pra saber a principal diferente entre o map e select ja que ambos de 
# primeiro modo faziam a msm coisa, porém, o select retorna o msm tipo do obejto sendo percorrido
# ja o map sempre retorna um valor unico ou array 

ok = family.map do  |k, v|
   if k == :sisters
        v[-2] = "BATATA"
   else
        v = v 
   end
end

p immediate_family.class, ok.class, family[:sisters]