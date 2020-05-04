x = 0:0.1:10;
subplot(1,2,1);
X1 = gaussmf(x,[3 5]);
X2 = gaussmf(x,[3 7]);
X3 = min([X1;X2]);
%построение исходных ФП пунктирной линией
plot(x,[X1; X2], ': '); 
xlabel('x');
ylabel('X3(x)');
%включение механизма добавления кривой  в текущий график
hold on;	
% выключение механизма добавления кривой в текущий график
plot(x,X3);
subplot(1, 2, 2);
X4 = max([X1;X2]);
plot(x,[X1;X2], ': ');
xlabel('x');
ylabel('X4(x)');
hold on; 
plot(x,X4);
hold off
