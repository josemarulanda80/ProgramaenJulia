function generatePoints(m,lowerLimit,upperLimit)
    x=collect(range(start = lowerLimit, length=m, stop=upperLimit))
    xc=collect(range(start = lowerLimit, length=m, stop=upperLimit))
    return x,xc
end
x,xc=generatePoints(50,0,1)

function functionPointsMonosCenters(m,n,x,xc)
    pointsMonosCenters=zeros((n,m))
    for i ∈ 1:n
        for j ∈ 1:n
            pointsMonosCenters[i,j] =x[i]-xc[j]
        end
    end
    return pointsMonosCenters
end


pointsMonosCenters= functionPointsMonosCenters(50,50,x,xc)
function functionR(n,m,x,xc)
    #Dimensiono la matriz r
    r=zeros((n,m))
    #recorro las columnas
    for i ∈ 1:n
        for j ∈ 1:n
            r[i,j] =sqrt((x[i]-xc[j])^2)
        end
    end
    return r
end

r=functionR(50,50,x,xc)
