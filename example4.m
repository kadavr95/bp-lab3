x=0:0.1:10;
%двухстороняя Гауса
X1=gauss2mf(x,[2 7 1 5]);
%сигмоидная основная
X2=sigmf(x,[2 6]);
%первый график
subplot(2,2,1);
plot(x,X1,'k--')
axis([-2,12,-1.5,1.5]);
ylabel('X1(x)');
grid on;

%второй график
subplot(2,2,2);
plot(x,X2,'k:')
axis([-2,12,-1.5,1.5])
ylabel('X2(x)');
grid on

%конъюнкция (пересечение) алгебраическое произведение
subplot(2,2,3)
X3=prod([X1;X2]);
plot(x,X3,'k-')
axis([-2,12,-1.5,1.5])
xlabel('x');
ylabel('X3(x)');
grid on

%дизъюнкция (вероятностная интерпретация) алгебраическая сумма

subplot(2,2,4)
X4=probor([X1;X2]);
plot(x,X4,'k-')
axis([-2,12,-1.5,1.5])
xlabel('x');
ylabel('X4(x)');
grid on
