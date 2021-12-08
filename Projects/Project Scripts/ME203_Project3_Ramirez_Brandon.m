% Brandon Ramirez Lopez, Emerson Fleming, Gabriel Ritch
% ME 203 Project
% Question Three
clc,clear all,format compact
Hero = input('Choose Hero name:\n');
N=input('Choose the number of words that you want to see:\n');
switch Hero
    case {'Thor'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Hulk','Bruce Banner'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Nick Fury'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Iron man','Tony Stark'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Captin America','Steve Roger'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Black widow','Natasha Romanoff'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Hawk eye','Clint Barton'}
        [Top,subcount]=combinefunctions_BR(Hero,N);
        figure(1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title(Hero)
    case {'Avenger Assemble'}
        [Top,subcount]=combinefunctions_BR('Hawk eye',N);
        figure(1)
        subplot(2,3,1)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Hawkeye')
        [Top,subcount]=combinefunctions_BR('Iron man',N);
        figure(1)
        subplot(2,3,2)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Iron man')
        [Top,subcount]=combinefunctions_BR('Thor',N);
        figure(1)
        subplot(2,3,3)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Thor')
        [Top,subcount]=combinefunctions_BR('Captin America',N);
        figure(1)
        subplot(2,3,4)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Captin America')
        [Top,subcount]=combinefunctions_BR('Black widow',N);
        figure(1)
        subplot(2,3,5)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Black widow')
        [Top,subcount]=combinefunctions_BR('Hulk',N);
        figure(1)
        subplot(2,3,6)
        bar(subcount)
        set(gca,'XtickLabel',Top)
        set(gca,'Fontsize',8)
        title('Hulk')
    otherwise disp('Incorrect name run again')
end