
 WIN_COMBINATIONS = [
 [0,1,2], #top row
 [3,4,5], #middle row
 [6,7,8], #bottom row
 [0,3,6], #left column
 [1,4,7], #middle column
 [2,5,8], #right column
  [0,4,8], #diagonal back
  [6,4,2], #diagonal forward
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def won?(board)
  won = false
  WIN_COMBINATIONS.detect do |combo|
    if board[combo[0]] == " "
      won = false
    elsif board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
      won = combo
    end
 end
  won
end

def full?(board)
 board.none?{|space| space == " "}
end

def draw?(board)
 won?(board) == false && full?(board) ? true : false
end

+def over?(board)
  won?(board) || full?(board) || draw?(board)
+end

def winner(board)
  if won?(board) != false
    board[won?(board)[0]]
 end
end