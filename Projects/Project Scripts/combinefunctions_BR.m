function [Top,Subcount] = combinefunctions_BR(Hero,N)
%The function combines the four functions that I perviously made and then
%using the inputs of the Hero name and the count of words N it shows the
%words and the  number of times they occur
d=get_words_BR(Hero);
data=d;
Output=remove_delim_BR(data);
[data_filtered,L]=clean_words_BR(Output);
[barx,count]=categorizes_words_BR(data_filtered);
[Top,Subcount]=Top_N (count,barx,N);
end