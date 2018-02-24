RSpec.describe Crossbone::MatrixExtension do
  it 'has a version number' do
    expect(Crossbone::MatrixExtension::VERSION).not_to be nil
  end

  it 'includes instance_methods' do
    require 'matrix'
    expect(Vector.instance_methods).to include(:manhattan)
    expect(Vector.instance_methods).to include(:chessboard)
    expect(Matrix.instance_methods).to include(:bitwise_multiplication)
  end
end