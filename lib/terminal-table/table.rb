
module Terminal
  class Table
    
    X, Y, I = '-', '|', '+'
    
    PADDING = 1
    
    attr_accessor :headings, :rows
  
    def initialize options = {}
      @headings = options.delete(:headings) || []
      @rows = options.delete(:rows) || []
    end
  
    def render
      
    end
    alias :to_s :render
    
    def add_row row
      @rows << row
    end
    alias :<< :add_row
    
    def headings_length
      @headings.sum_of :length
    end
    
    def headings_length_with_padding
      headings_length + padding
    end
    
    def largest_row
      @rows.sort_by { |row| row.join.length }.last 
    end
    
    def length_of_largest_row
      largest_row.sum_of :length
    end
    
    def length_of_largest_row_with_padding
      length_of_largest_row + padding
    end
    
    def padding
      @rows.first.length * (PADDING * 2)
    end
    
    def has_headings?
      !@headings.empty?
    end
    
    def align_column n, alignment
      
    end
    
  end
end