% script_trabajo_especial

clear
clc

dni = 38270068;
epsilon =0.1;
[probabilidad_estimada, probabilidades_parciales] = calcular_probabilidad_tiro(epsilon,dni);
 mostrar_y_graficar(probabilidades_parciales,probabilidad_estimada,epsilon);
 desvio_estandar_primeros_20 = std(probabilidades_parciales(1:20));
 fprintf('El desvio estandar de los primeros 20 es: = %f \n',desvio_estandar_primeros_20);
 desvio_estandar_ultimos_20 = std(probabilidades_parciales(end-19:end));
 fprintf('El desvio estandar de los ultimos 20 es: = %f \n',desvio_estandar_ultimos_20);
 fprintf('\n');
 
 epsilon = 0.01;
[probabilidad_estimada, probabilidades_parciales] = calcular_probabilidad_tiro(epsilon,dni);
 mostrar_y_graficar(probabilidades_parciales,probabilidad_estimada,epsilon); 
 desvio_estandar_primeros_20 = std(probabilidades_parciales(1:20));
 fprintf('El desvio estandar de los primeros 20 es: = %f \n',desvio_estandar_primeros_20);
 desvio_estandar_ultimos_20 = std(probabilidades_parciales(end-19:end));
 fprintf('El desvio estandar de los ultimos 20 es: = %f \n',desvio_estandar_ultimos_20);
 fprintf('\n');

epsilon = 0.001;
[probabilidad_estimada, probabilidades_parciales] = calcular_probabilidad_tiro(epsilon,dni);
 mostrar_y_graficar(probabilidades_parciales,probabilidad_estimada,epsilon);
 desvio_estandar_primeros_20 = std(probabilidades_parciales(1:20));
 fprintf('El desvio estandar de los primeros 20 es: = %f \n',desvio_estandar_primeros_20);
 desvio_estandar_ultimos_20 = std(probabilidades_parciales(end-19:end));
 fprintf('El desvio estandar de los ultimos 20 es: = %f \n',desvio_estandar_ultimos_20);