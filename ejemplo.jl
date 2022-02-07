
function matrixA(r,m,q,parameterMQ,typeFunction)
    matrix=zeros((m,m))
    if (typeFunction == 1)
        matrix= sqrt((r^2+parameterMQ))
    else
        matrix= (r)^(2*q)*log(r)
        matrix =ifelse.(r==0,0,matrix)
    return matrix
    end
end
println(matrixA(2,4,2,0,0))


function h()
    y =0
    for i in 0:100000000
        y=sqrt(((y)^2)+sqrt(i))
    end
    return y
end



println(h()) 

a=@time matrixA
b=@time h
