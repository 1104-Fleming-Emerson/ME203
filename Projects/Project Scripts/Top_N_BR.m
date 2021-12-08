function [TOP,subcount]=Top_N_BR(count,barx,N)
%This funtion takes the number of words desires 'N',the words in the array
%'barx', and the number of times the word appears 'count' and then sorts
%them from most common word to least common word 'TOP' and the number of
%times they appear 'subcount'
TOP_N=maxk(count,N);
i=0;
while i<length(TOP_N)
    i=i+1;
    f=find(count==TOP_N(i));
    if length(f)>1
        for j=1:length(f)
            g(i)=f(j); 
            i=i+1;
            if j==length(f)
                i=i-1;
            end
            
        end
    else
        g(i)=f;
    end
end
TOP=barx(g);
for c=1:length(g)
    subcount(c)=count(g(c));
end