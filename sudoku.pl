% Initialize the game (given numbers)
sudoku(1, 1, 5).
sudoku(1, 2, 3).
sudoku(1, 5, 7).
sudoku(2, 1, 6).
sudoku(2, 4, 1).
sudoku(2, 5, 9).
sudoku(2, 6, 5).
sudoku(3, 2, 9).
sudoku(3, 3, 8).
sudoku(3, 8, 6).
sudoku(4, 1, 8).
sudoku(4, 5, 6).
sudoku(4, 9, 3).
sudoku(5, 1, 4).
sudoku(5, 4, 8).
sudoku(5, 6, 3).
sudoku(5, 9, 1).
sudoku(6, 1, 7).
sudoku(6, 5, 2).
sudoku(6, 9, 6).
sudoku(7, 2, 6).
sudoku(7, 7, 2).
sudoku(7, 8, 8).
sudoku(8, 4, 4).
sudoku(8, 5, 1).
sudoku(8, 6, 9).
sudoku(8, 9, 5).
sudoku(9, 5, 8).
sudoku(9, 8, 7).
sudoku(9, 9, 9).
% define the grid
n(1..9).
x(1..9).
y(1..9).
% each field contains exactly one number from 1 to 9
{sudoku(X,Y,N): n(N)} = 1 :- x(X) ,y(Y).
% helper
subgrid(X,Y,A,B) :- x(X), x(A), y(Y), y(B),(X-1)/3 == (A-1)/3, (Y-1)/3 == (B-1)/3.
% constraints
:- sudoku(X,Y,N), sudoku(A,Y,N), X!=A.
:- sudoku(X,Y,N), sudoku(X,B,N), Y!=B.
:- sudoku(X,Y,V), sudoku(A,B,V), subgrid(X,Y,A,B), X != A, Y != B.
#show sudoku/3.