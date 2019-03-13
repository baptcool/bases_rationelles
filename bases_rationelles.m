
function [] = bases_rationelles(n)
     w=[1,1,1,2,1,1,1]
     t = [0:0.01:1]
      for b = 1:n+1
        w(b) = input("pick up a numnber") %on remplit le vecteur W ("les poids")
      endfor    
     somme =0
     for i = (1:(n+1))  % n+1 car on commence à 1
        x=[]
        y=[]
       for k = 1: length(t)
          somme = RR(n,i-1,t(k),w)     %fonction de base ratio / i-1 car on veut commencer à 0
          
          x(k) = t(k) %on récupère la coordonnée en x
          y(k) = somme(1) %on récupère la coordonnée en y
       end
       hold on
       plot(x,y) % on plot pour chaque i
       somme = 0;
     end
     
      
      
endfunction

function[r] = RR(n,i,t,w)
  r  = (w(i+1)*bernstein(n,i,t))
  temp = 0 
  for j = 1:n+1 % n+1 car on commence à 1
    temp += w(j)*bernstein(n,j-1,t) %on fait la somme  
  endfor
  r = r/temp
endfunction


function[b] = bernstein(n,i,t)
      b = bnew(n,i) * (t^i)*((1-t)^(n-i))
endfunction

function[f] = bnew(n,a) 
  f = factorial(n)/(factorial(n-a)*factorial(a))
endfunction