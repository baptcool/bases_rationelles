
%tracé des courbes de la base de bernstein pour w=1
function[b] = tracer_base_bernstein(n)
   t = [0:0.01:1]
	

    for i=(1:n+1)
      a = i-1
      b = bnew(n,a) * (t.^a).*((1-t).^(n-a)) %on applique la formule du cours
      hold on
      plot(t,b)
    endfor

  
endfunction

function[f] = bnew(n,a) 
  f = factorial(n)/(factorial(n-a)*factorial(a))
endfunction