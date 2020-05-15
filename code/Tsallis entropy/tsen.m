function TE=ts(DataName,N,q)                                         

x=detrend(DataName);                       
sigma=std(x);                          
segment=zeros(1,N+1);
for i=-25:25
    segment(i+26)=i*3*sigma/25;      %��������׼��Ϊ�������仮��50�ȷ֣�����
end
n=hist(x,segment);                    
s=sum(n);                           
p=n./s;                                    
bar(segment,p);                   

TE=0;                                     %��Tsallis��
for i=1:(N+1)
    TE=p(i)^q+TE;
end

TE=(TE-1)/(1-q);
 
