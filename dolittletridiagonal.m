format long
a=[2 2 4 2 2] % main diagonal of A
n=length(a)
c=[1 2 0 1] % sub diagonal of A
d=[-1 -1 -1 -1] % super diagonal of A
b=[1 2 -1 -2 -1] % R.H.S column matrix
u=zeros(n,1); % initialize diagonal of U
y=zeros(n,1); % initialize y
x=zeros(n,1); % initialize x
% Step 1 : Computation of diagonal of upper triangular matrix U
u(1)=a(1);
for i=2:n
u(i)=a(i)-c(i-1)*d(i-1)/u(i-1);
end
u
% Step 2: Computation of Y
y(1)=b(1);
for i=2:n
y(i)=b(i)-c(i-1)*y(i-1)/u(i-1);
end
y
% Step 3: Computation of X
x(n)=y(n)/u(n);
for i=n-1:-1:1
x(i)=(y(i)-d(i)*x(i+1))/u(i);
end
x
