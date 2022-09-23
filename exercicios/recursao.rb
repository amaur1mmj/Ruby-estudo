def regressiva(number)
     if number <= 0
        p number
     else
        puts number
        regressiva(number-1)
     end
end

regressiva(10)