module Crossbone
  module MatrixExtension
    module MatrixInstanceMethods
      def bitwise_multiplication(other)
        raise ArgumentError, 'Parameter is not a Matrix' unless other.is_a? Matrix
        raise ExceptionForMatrix::ErrDimensionMismatch unless self.row_size == other.row_size && self.column_size == other.column_size
        Matrix.build(row_count, column_count) do |row, column|
          self[row, column] * other[row, column]
        end
      end
    end
  end
end