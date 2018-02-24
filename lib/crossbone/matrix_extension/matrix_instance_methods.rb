module Crossbone
  module MatrixExtension
    module MatrixInstanceMethods
      def bitwise_multiplication(other)
        Matrix.build(row_count, column_count) do |row, column|
          self[row, column] * other[row, column]
        end
      end
    end
  end
end