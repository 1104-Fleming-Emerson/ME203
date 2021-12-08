function [data_filtered,L] = clean_words_BR (Output)
% Removes the top most comon words form a cell aray
% https://www.espressoenglish.net/the-100-most-common-words-in-english/
% removes the most comon word
Output(strcmp(Output,'the'))= [];
Output(strcmp(Output,'of'))= [];
Output(strcmp(Output,'and'))= [];
Output(strcmp(Output,'a'))= [];
Output(strcmp(Output,'to'))= [];
Output(strcmp(Output,'in'))= [];
Output(strcmp(Output,'is'))= [];
Output(strcmp(Output,'you'))= [];
Output(strcmp(Output,'that'))= [];
Output(strcmp(Output,'it'))= [];
Output(strcmp(Output,'he'))= [];
Output(strcmp(Output,'was'))= [];
Output(strcmp(Output,'for'))= [];
Output(strcmp(Output,'on'))= [];
Output(strcmp(Output,'are'))= [];
Output(strcmp(Output,'as'))= [];
Output(strcmp(Output,'with'))= [];
Output(strcmp(Output,'his'))= [];
Output(strcmp(Output,'they'))= [];
Output(strcmp(Output,'i'))= [];
data_filtered=Output;
L=length(data_filtered)% length of filtered data array
end