%Gabriel Ritch, Emerson Fleming, Brandon Ramirez Lopez
% ME 203, Section# 1001
%12/6/21
%Final project
% Problem 1 

clc; clear all; format compact;
%% task 1
suppress = false; %bool used to supress the outputs in task 2

OPlayer = 0; % this is what the 0 player's moves show up as. Can easily be changed here.
XPlayer = 1;% this is what the X player's moves show up as. Can easily be changed here.
empty = NaN;% this is what the empty spaces on the board are filled with.
Board = zeros(3,3);% creates board
Board(:,:) = empty;% fills board with empty values
no_winner = true;% used to store if winner has been found. This is changed by the checks. 
Player1 = input('1s or 0s?\n', 's'); %Player 1 can choose between 1s and 0s. 

if Player1 == '1' %sets how Player 1's and Player 2's moves show on the board
    Player1 = XPlayer
    Player2 = OPlayer
elseif Player1 == '0'
        Player1 = OPlayer
        Player2 = XPlayer
end

Player = Player1;% sets first player as player 1
fprintf('Player 1: \n')


while sum(isnan(Board(:))) > 0 && no_winner % runs while there are empty spaces on the board, and no winner has been found. 
    row = input('choose your row: \n'); % asks for row to be played
    column = input('choose your column: \n'); % asks for column to be played
    
    if isnan(Board(row,column)) % if the place is empty fill it with the current players value (1's or 0's)
        Board(row,column) = char(Player);
        Board % displays the board
        Turn_end = true; % ends the current player's turn. 
    else
        fprintf('Please choose an empty space. \n') % prompts the player to choose a new space
        Turn_end = false; % it remains the same player's turn. 
    end
    
    % check
    no_winner = Total_check(Board, Player, Player1, Player2, suppress); % uses a function to check for winners. 
    
    % Switch players
    if no_winner
        if Player == Player1 && Turn_end == true % changes players from player 1 to player 2.
            Turn_end = false;
            Player = Player2;
            fprintf('Player 2: \n')

        elseif Player == Player2 && Turn_end == true % changes players from player 2 to player 1.
            Turn_end = false;
            Player = Player1;
            fprintf('Player 1: \n')
        end
    end
    
    
end

%% Task 2
iterations = 5000; % number of iterations the simulation is run over. 
P1_wins = 0; % stores the number of player 1 wins
P2_wins = 0 ;% stores the number of player 2 wins
ties = 0;% stores the number of ties.
winner = NaN; %there is no winner to start with. 
wins = NaN; 
suppress = true;% supresses all unnecessary print statements. 


OPlayer = 0;% this is what the 0 player's moves show up as. Can easily be changed here.
XPlayer = 1;% this is what the X player's moves show up as. Can easily be changed here.
empty = NaN;% this is what the empty spaces on the board are filled with.
Board = zeros(3,3);% creates board
Board(:,:) = empty;% fills board with empty values
Turn_end = 0;% checks if current player's turn is over
no_winner = true;% used to store if winner has been found. This is changed by the checks. 
Player1 = '1'; % preset player 1 value



if Player1 == '1'% sets player 1 and player 2 values
    Player1 = XPlayer;
    Player2 = OPlayer;
elseif Player1 == '0'
    Player1 = OPlayer;
    Player2 = XPlayer;
end

Player = Player1; % first turn is player 1

for i = 1:iterations % runs for the number of iterations
    no_winner = true; % resets the no_winner value after each completed simulation
    Board(:,:) = empty;% resets the board
    
    while sum(isnan(Board(:))) > 0 && no_winner % picks a random row and column for the current player to play
        row = randi(size(Board,2),1);
        column = randi(size(Board,1),1);

        if isnan(Board(row,column)) % checks to make sure the chosen spot has not been played. 
            Board(row,column) = char(Player);
            Turn_end = true;
        else %if spot has alredy been played, pick another spot. 
            Turn_end = false;
        end

        % check
        [no_winner,winner] = Total_check(Board, Player, Player1, Player2, suppress); % checks for winner

        % Switch players
        if no_winner % as long as there are no winners switch the current player. 
            if Player == Player1 && Turn_end == true 
                Turn_end = false;
                Player = Player2;

            elseif Player == Player2 && Turn_end == true
                Turn_end = false;
                Player = Player1;
            end
        end


    end
    wins = Tally(winner,wins);% add this value to the wins array. 

end
A = categorical(wins,[1 2 NaN],{'Player 1 wins','Player 2 wins','Tie'});% Creates a text based array corosponding to the values in the wins array. 
histogram(A)% creates a histogram
%% Backward diaginal check function
function [no_winner] = Back_diaginal_Check(Board,Player) % inputs the board and the player, and outputs a true or false depending on wether or not a winner was found. 

Test = 0;
for i = 1:size(Board,1) % iterates through the size of the board, and checks for the current players value where the row equals the columns. (diagnal) 
    for j = 1:size(Board,2)
            if i==j
                if Board(i,j) == Player  && Test < 3
                    Test = Test+1; % adds one to Test variable if the desired value has been found on the diaginal. 
                elseif Test == 3 % breaks if test equals 3 (a full line) 
                    break
                else
                    Test = 0;
                end
            end
    end
end
if Test == 3 % if var Test equals 3, a winner has been found. 
    no_winner = false;
 else
    no_winner = true;
end
end

%% forward diaginal check function
function [no_winner] = Forward_diaginal_Check(Board,Player)% inputs the board and the player, and outputs a true or false depending on wether or not a winner was found. 

Test = 0;
for i = 1:size(Board,1) % iterates through the size of the board, and checks for the current players value where the row equals the columns. It does in the opposite direction as the back diagnal test. 
    for j = size(Board,1):-1:1
        if i+j == 4 
            if Board(i,j) == Player  && Test < 3
                Test = Test+1;% adds one to Test variable if the desired value has been found on the diaginal. 
            elseif Test == 3% breaks if test equals 3 (a full line) 
                break
            else
                Test = 0;% sets test to 0 if a different value has been found other than the desired one. 
            end
        end
    end
end
 if Test == 3 % if var Test equals 3, a winner has been found.
     no_winner = false;
 else
     no_winner = true;
end
end

%% Vertical Check
function [no_winner] = Vertical_check(Board,Player) % checks vertical lines for the desired value.

Test = 0;
for i = 1:size(Board,1) % iterates through the collums row by row. 
    if all(Board(:, i)==Player)
        Test = 1;
        break
    end
end
 if Test == 1 % if test equals one, a winner has been found. 
     no_winner = false;
 else
     no_winner = true;
end
end
%% Horizontal Check
function [no_winner] = Horizontal_check(Board,Player) % Checks for the desired value in the horizontal direction, rows. 

Test = 0;
for i = 1:size(Board,2) % checks if the entire row equals the player's value for all rows. 
    if all(Board(i,:)==Player)
        Test = 1;
        break
    end
end
 if Test == 1 % if test equals 1, the winner has been found. 
     no_winner = false;
 else
     no_winner = true;
end
end
%% Total Check
function [no_winner,winner] = Total_check(Board,Player, Player1, Player2, suppress) % combines all the other functions in to one easy to use functions. 
winner = NaN;
no_winner1 = Back_diaginal_Check(Board,Player); % checks if a winner has been found on the Back diaginal
no_winner2 = Forward_diaginal_Check(Board,Player);% checks if a winner has been found on the forward diaginal
no_winnner3 = Vertical_check(Board,Player);% checks if a winner has been found in the columns, vertical. 
no_winner4 = Horizontal_check(Board,Player);% checks if a winner has been found on the rows, Horizontal. 

if ~no_winner1 || ~no_winner2 || ~no_winnner3 || ~no_winner4 % checks if any winner has been found between any of the tests. 
    no_winner = false;% says that winner has been found. 
    
    if Player == Player1 % checks who won
        if ~suppress
            fprintf('Player 1, %ds won!!! \n', Player)
        end
        winner = 'Player 1';
    elseif Player == Player2
        if ~suppress
            fprintf('Player 2, %ds won!!! \n', Player)
        end
        winner = 'Player 2';
    end
    
else
    no_winner = true;
end

if no_winner && sum(isnan(Board(:))) == 0 % if there was now winner, and the board has been filled, it was a tie, cat's game. 
    if ~suppress
        fprintf('The game has ended in a tie \n')
    end
    winner = 'cat';
end

end

%% Tally 
function [wins] = Tally(winner,wins) % appends the winner of the current game to the wins array. 

switch winner
    case 'Player 1'
        wins = [wins 1];
        
    case 'Player 2'
        wins = [wins 2];
        
    case 'cat'
        wins = [wins NaN];
    otherwise
        fprintf('err');

end

end