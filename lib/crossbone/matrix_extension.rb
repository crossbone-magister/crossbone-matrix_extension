require "crossbone/matrix_extension/version"
require 'crossbone/matrix_extension/matrix_instance_methods'
require 'crossbone/matrix_extension/vector_instance_methods'
require 'matrix'

class Vector
  include Crossbone::MatrixExtension::VectorInstanceMethods
end

class Matrix
  include Crossbone::MatrixExtension::MatrixInstanceMethods
end