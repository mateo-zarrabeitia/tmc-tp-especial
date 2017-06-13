function [probabilidad_estimada, probabilidades_parciales] = calcular_probabilidad_tiro(epsilon, dni)
  
  probabilidades_parciales = [];
  probabilidad_anterior = 0;
  probabilidad_actual = 0;
  autorizo_disparo = false;
  casos_favorables = 0;
  total_de_tiros = 0;
  tic;
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_tiros)
 
     probabilidad_anterior = probabilidad_actual;
     total_de_tiros = total_de_tiros + 1;
     autorizo_disparo1 = my_mex_service(dni);
     autorizo_disparo2 = my_mex_service(dni);
     if (~(autorizo_disparo1)&&~(autorizo_disparo2))
        casos_favorables = casos_favorables + 1;
     end
     probabilidad_actual = casos_favorables / total_de_tiros;
     probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
  end
  probabilidad_estimada = probabilidad_actual;
  tiempo = toc;
  fprintf('El tiempo que tardo el algoritmo es: %f \n',tiempo);
  
 end  