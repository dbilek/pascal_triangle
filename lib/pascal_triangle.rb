class PascalTriangle
  INITIAL_NUM = 1
  MAX_ROWS = 500

  def initialize(rows)
    @rows = rows.to_i
    @valid_number = (@rows.between? 1, MAX_ROWS) ? true : false
  end

  def valid_number?
    @valid_number
  end

  def calculate_triangle
    if valid_number?
      triangle_numbers = [[INITIAL_NUM]]
      
      if @rows >= 2
        triangle_numbers << [INITIAL_NUM,INITIAL_NUM]
        @rows -= 2

        @rows.times do
          triangle_numbers << calculate_current_row(triangle_numbers.last)  
        end
      end

      triangle_numbers
    else
      false
    end
  end

  private
    def calculate_current_row(triangle_numbers)
      index = 0
      current_row = []
      current_row << INITIAL_NUM

      while index < triangle_numbers.count - INITIAL_NUM
        current_row << triangle_numbers[index] + triangle_numbers[index.succ]
        index += 1
      end

      current_row << INITIAL_NUM
      current_row
    end
end

