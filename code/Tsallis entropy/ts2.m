function te=ts2(x,q)
  [M,N]=size(x);
       y=zeros(1,N);
       for l=1:N
          sum1=sum(x(:,l)-(x(:,l)).^q);
          sum2=sum1/(q-1);
          y(1,l)=sum2;
          te=y(1,1);
       end