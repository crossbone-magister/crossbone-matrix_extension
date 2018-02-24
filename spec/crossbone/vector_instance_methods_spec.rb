RSpec.describe Crossbone::MatrixExtension::VectorInstanceMethods do
  require 'matrix'

  describe '#manhattan' do
    v1 = Vector[1, 2]
    v2 = Vector[3, 4]

    it 'should not accept null' do
      expect {
        v1.manhattan(nil)
      }.to raise_error(ArgumentError)
    end

    it 'should accept only a Vector' do
      expect {
        v1.manhattan('a string')
      }.to raise_error(ArgumentError)
    end

    it 'should accept same size Vector only' do
      expect {
        v1.manhattan(Vector[1])
      }.to raise_error(ExceptionForMatrix::ErrDimensionMismatch)
      expect {
        v1.manhattan(Vector[1, 2, 3])
      }.to raise_error(ExceptionForMatrix::ErrDimensionMismatch)
    end

    it 'should calculate manhattan distance correctly' do
      expect(v1.manhattan(v2)).to eq(4)
    end

    it 'should be commutative' do
      expect(v1.manhattan(v2)).to eq(v2.manhattan(v1))
    end
  end

  describe '#chessboard' do
    v1 = Vector[1, 1]
    v2 = Vector[3, 4]

    it 'should not accept null' do
      expect {
        v1.chessboard(nil)
      }.to raise_error(ArgumentError)
    end

    it 'should accept only a Vector' do
      expect {
        v1.chessboard('a string')
      }.to raise_error(ArgumentError)
    end

    it 'should accept same size Vector only' do
      expect {
        v1.chessboard(Vector[1])
      }.to raise_error(ExceptionForMatrix::ErrDimensionMismatch)
      expect {
        v1.chessboard(Vector[1, 2, 3])
      }.to raise_error(ExceptionForMatrix::ErrDimensionMismatch)
    end

    it 'should calculate chessbboard distance correctly' do
      expect(v1.chessboard(v2)).to eq(3)
    end

    it 'should be commutative' do
      expect(v1.chessboard(v2)).to eq(v2.chessboard(v1))
    end
  end

end