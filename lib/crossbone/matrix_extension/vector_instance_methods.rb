module Crossbone
  module MatrixExtension
    module VectorInstanceMethods
      def manhattan(other)
        (self - other).each.reduce(0) {|mem, elem| elem.abs + mem}
      end

      def chessboard(other)
        (self - other).each.reduce(0) {|mem, elem| elem.abs > mem ? elem.abs : mem}
      end
    end
  end
end