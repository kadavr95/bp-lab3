x = 0:0.1:10;
subplot(1,2,1);
X1 = gaussmf(x,[3 5]);
X2 = gaussmf(x,[3 7]);
X5 = prod([X1;X2]);
plot(x,[X1;X2], ' : ')
hold on;
plot(x,X5);
xlabel('x');
ylabel('X5(x)');
subplot(1,2,2);
X6 = probor([X1;X2]);
plot(x,[X1;X2], ': ');
hold on;
plot(x,X6);
xlabel('x');
ylabel('X6(x)');
hold off;

