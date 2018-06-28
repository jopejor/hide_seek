using Gillespie

function F_dimer(x,parms)
    (A,A2) = x
    (r1,d1,p,r2,d2) = parms
    [r1*A,d1*A,p*A*(A-1)/2,r2*A2,d2*A2]
end

x0 = [5,0]
nu = [[1 0];[-1 0];[-2 1];[0 1];[0 -1]]
parms = [0.2,0.01,0.021,0.4,0.01]
tf = 30.0
srand(1234)

result = ssa(x0,F_dimer,nu,parms,tf)

data = ssa_data(result)