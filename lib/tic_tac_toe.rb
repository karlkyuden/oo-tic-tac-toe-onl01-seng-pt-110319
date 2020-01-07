class TicTacToe
  
  WIN_COMBINATIONS = [
    [0,1,2], #Top Row`
    [3,4,5], #Middle Row
    [6,7,8], #Bottom Row
    [0,3,6], #Left Column
    [1,4,7], #Middle Column
    [2,5,8], #Right Column
    [0,4,8], # \ 
    [2,4,6] # /
    ]
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
    
  end
  
  def move(index, userToken = "X")
    @board[index] = userToken
    
  end
  
  def position_taken? (index)
    @board[index] == "X" || @board[index] == "O"
  end
  
  def valid_move?(position)
    position.between?(0,8) && position_taken?(position) == FALSE
  end
  
  def turn()
    puts "Please enter between 1-9"
    index = gets.chomp
    index = input_to_index(index.to_i)
    player = current_player
    if valid_move?(index)
      move(index, player)
      display_board
    else
      turn
    end
  
  end

  
  def turn_count()
    turnCount = 0
    @board.each do |turns|
      if turns =="X" || turns == "O"
        turnCount++
      
    end
    turnCount
  
    
  end
  
  def current_player()
    if turnCount % 2 == 0
      "X"
    else
      "O"
    end
  end
    
    
    
  
  
  
end