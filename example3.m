x =0:0.1:10;
X = gaussmf(x,[3 5]);
X7 = 1 - X;
plot(x,X, ' : ');
hold on;
plot(x,X7);
xlabel('x');
ylabel('X7(x)');
hold off;

