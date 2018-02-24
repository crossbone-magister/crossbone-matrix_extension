RSpec.describe Crossbone::MatrixExtension::MatrixInstanceMethods do
  require 'matrix'

  describe '#bitwise_multiplication' do

    m1 = Matrix[
        [1, 2],
        [3, 4]
    ]
    m2 = Matrix[
        [4, 3],
        [2, 1]
    ]

    it 'should not accept null' do
      expect {
        m1.bitwise_multiplication(nil)
      }.to raise_error(ArgumentError)
    end

    it 'should accept only Matrix' do
      expect {
        m1.bitwise_multiplication('a string')
      }.to raise_error(ArgumentError)
    end

    it 'should accept only same size Matrix' do
      expect {
        m1.bitwise_multiplication(Matrix[[1, 2]])
      }.to raise_exception(ExceptionForMatrix::ErrDimensionMismatch)
      expect {
        m1.bitwise_multiplication(Matrix[[1], [2]])
      }.to raise_exception(ExceptionForMatrix::ErrDimensionMismatch)
      expect {
        m1.bitwise_multiplication(Matrix[[1, 2, 3], [4, 5, 6]])
      }.to raise_exception(ExceptionForMatrix::ErrDimensionMismatch)
      expect {
        m1.bitwise_multiplication(Matrix[[1, 2], [3, 4], [5, 6]])
      }.to raise_exception(ExceptionForMatrix::ErrDimensionMismatch)
    end

    it 'should return a matrix that contains the products of single cells' do
      result = m1.bitwise_multiplication(m2)
      result.each_with_index do |element, row, column|
        expect(element).to eq(m1[row, column] * m2[row, column])
      end
    end
  end

end