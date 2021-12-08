
   
function [barx,count]=categorizes_words_BR(data_filtered)
%categorizes_words_BR(data_filtered)
% This function categorizes the words in alphabetical order and then sorts them by most common words and the number of times they appear
c =sort(data_filtered); % Puts them in alphabetical order
[count,barx]=groupcounts(c);% Puts them in order from most common word and the number of times they appear
end