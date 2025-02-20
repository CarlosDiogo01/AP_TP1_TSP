function PARtraveling(n,procs)

% This is a simulation of a parallel execution on P processors of the code
% traveling which uses simulated annealing to find the shortest route to go
% through each one of N towns
% Each process executes the same code with different random
% numbers and, in general, will find different answers with different
% costs. The parallel solution is thus the answer with smaller cost.

% generates the position of each town in a square of side 10...
x=10*rand(1,n); y=10*rand(1,n);

% ... plots them
plot([x,x(1)],[y,y(1)],'b-',x,y,'o',x(1),y(1),'*')
% ... and computes the distances between them 
for i=1:n
    for j=1:n
        D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
    end
end
% set up the zero cost route
for i=1:n
    j = i+1;
    if(j == n+1)
        j=1;
    end
    D(i,j) = 0;
    D(j,i) = 0;
end
D
clf
% with simulated annealing
% measure time
sai = tic;
for p=1:procs
    [Tdist(p),route]=traveling(x,y,D); 
    subplot(2,procs,p);
    plot([x(route),x(route(1))],[y(route),y(route(1))],'r',x(route),y(route),'o')
    legend(num2str(Tdist(p)))
end
saf = toc(sai);

 
% without simulated annealing
wsai = tic;
for p=1:procs
    [Tdist2(p),route2]=traveling2(x,y,D);
    subplot(2,procs,procs+p);
    plot([x(route2),x(route2(1))],[y(route2),y(route2(1))],'k',x(route2),y(route2),'o')
    legend(num2str(Tdist2(p)))
end
wsaf = toc(wsai);

fprintf('Time spent with SA %f seconds\n',saf);
fprintf('Time spent without SA %f seconds\n',wsaf);

[Tdist' Tdist2']



