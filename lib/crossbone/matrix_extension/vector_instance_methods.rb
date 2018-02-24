module Crossbone
  module MatrixExtension
    module VectorInstanceMethods
      def manhattan(other)
        raise ArgumentError, 'Parameter is not a Vector' unless other.is_a? Vector
        raise ExceptionForMatrix::ErrDimensionMismatch unless self.size == other.size
        (self - other).each.reduce(0) {|mem, elem| elem.abs + mem}
      end

      def chessboard(other)
        raise ArgumentError, 'Parameter is not a Vector' unless other.is_a? Vector
        raise ExceptionForMatrix::ErrDimensionMismatch unless self.size == other.size
        (self - other).each.reduce(0) {|mem, elem| elem.abs > mem ? elem.abs : mem}
      end
    end
  end
end