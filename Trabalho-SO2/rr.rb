def tempoEspera(processos, n, bt, wt, quantum)
    rem_bt = [0] * n

    for i in 0...n
        rem_bt[i] = bt[i]
    end

    t = 0 

    while 1
        done = true

        for i in 0...n 

            if(rem_bt[i] > 0)
                done = false
                
                if (rem_bt[i] > quantum)
                    t += quantum
                    rem_bt[i] -= quantum
                else
                    t = t+ rem_bt[i]
                    wt[i] = t - bt[i]
                    rem_bt[i] = 0 
                
                end
            end
    
        end

        if (done)
            break

        end
    end

end


def tempoRetorno(processos, n,bt,wt,tat)

    for i in 0...n 
    tat[i] = bt[i] + wt[i]
    
    end
end

def mediaEspera(processos, n, bt, quantum)
    wt = [0] * n
    tat = [0] * n

    tempoEspera(processos, n,bt, wt, quantum)

    tempoRetorno(processos,n , bt, wt, tat)

    print("    PBW", "       Tempo TAT \n")

    total_wt = 0
    total_tat = 0

    for i in 0...n

        total_wt = total_wt + wt[i]
        total_tat = total_tat +tat[i]
        print("  #{i+1}    #{bt[i]}     #{wt[i]}     #{tat[i]} \n")
    end

    print("Media de tempo de espera = #{total_wt} \n")
    print("Media de turn around time = #{total_tat}")
    
end


