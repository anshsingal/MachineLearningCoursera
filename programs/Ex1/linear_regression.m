function theta=regression(features, alpha, iterations, col, x, y) 
theta=zeros(features,1);
temp=zeros(features,1);
j=zeros(1,iterations);
for i=1:iterations
    for l=1:features
        temp(l)=theta(l)-alpha*sum((x*theta-y).*x(:,l))/(length(y));
    end
    theta=temp;
    j(i)=(sum((x*theta-y).^2)/(2*length(y)));
end
plot(j, col)
hold on
end