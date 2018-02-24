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

    it 'should return a matrix that contains the products of single cells' do
      result = m1.bitwise_multiplication(m2)
      result.each_with_index do |element, row, column|
        expect(element).to eq(m1[row, column] * m2[row, column])
      end
    end
  end

end