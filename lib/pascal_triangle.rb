class PascalTriangle
  INITIAL_NUM = 1
  ONE_ROW = 1
  TWO_ROWS = 2
  EMPTY = 0
  NO_ROWS = 0
  MAX_ROWS = 100

  def initialize(rows)
    rows = rows.to_i
    if rows > NO_ROWS && rows < MAX_ROWS
      @rows = rows
      @valid_number = true
    else
      @valid_number = false
    end
  end

  def valid_number?
    @valid_number
  end

  def calculate_triangle
    triangle_numbers, temp_array = [], []
    if valid_number?
      if @rows == ONE_ROW
        triangle_numbers = INITIAL_NUM
      else
        triangle_numbers = [INITIAL_NUM],[INITIAL_NUM,INITIAL_NUM]
        @rows -= TWO_ROWS

        @rows.times do
          temp = EMPTY

          triangle_numbers.last.each do |value|
            if temp == EMPTY
              temp = value
              temp_array << INITIAL_NUM #Add initial number to first place in temporary array
            else
              result, temp = temp + value, value
              temp_array << result
            end
          end

          temp_array << INITIAL_NUM #Add initial number to last place in temporary array
          triangle_numbers << temp_array #Add calculated numbers
          temp_array = [] #Reset temporary array
        end
      end
      triangle_numbers
    else
      false
    end
  end

end
