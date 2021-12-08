function data=get_words_BR(S);
% data=GETWORDS(hero)
% This function gets the words from a .txt file and stores them as an array
if S=="Thor"
    FID=fopen("Thor.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID); %close the file
elseif S=="Hulk"|S=="Bruce Banner"
    FID=fopen("Bruce_Banner.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
elseif S=="Nick Fury"
    FID=fopen("Nick_Fury.txt");
    data= textscan(FID,'%s')%scan through the file for each word;
    fclose(FID);
elseif S=="Black widow"|S=="Natasha Romanoff"
    FID=fopen("Natasha_Romanoff.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
elseif S=="Iron man"|S=="Tony Stark"
    FID=fopen("Tony_Stark.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
elseif S=="Hawk eye"|S=="Clint Barton"
    FID=fopen("Clint_Barton.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
else S== "Captin America"|S=="Steve Roger";
    FID=fopen("Steve_Rogers.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
end
end