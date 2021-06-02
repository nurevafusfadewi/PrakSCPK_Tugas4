
net = newp([0 1;0 1],1);
net.IW{1,1} = [-1 1];
net.b{1} = [1];
p = [[1;1] [1;0] [0;1] [0;0]];
t = [1 1 1 0];

a = sim(net,p);


net = train(net,p,t)
disp (net.IW{1,1})
disp (net.b{1})

b = sim(net,p)
