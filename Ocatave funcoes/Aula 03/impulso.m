function k = impulso(t) 
  k = t;
  
  for i = 1: length(t)
      if t(i) != 0
        k(i) = 0;
      else
        k(i) = 1;
      endif
  endfor
endfunction