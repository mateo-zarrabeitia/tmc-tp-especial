function [] = mostrar_y_graficar(probabilidades_parciales, probabilidad_estimada, epsilon)
fprintf('Probabilidad de tiro con un epsilon de: = %f', epsilon);
fprintf(' es de = %f \n',probabilidad_estimada);
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

