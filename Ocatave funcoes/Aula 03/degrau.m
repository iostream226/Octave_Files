function u = degrau(t) 
  u = t;
  
  for i = 1: length(t)
      if t(i) >= 0
        u(i) = 1;
      else
        u(i) = 0;
      endif
  endfor
endfunction
