$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))


# require 'scbi_math/array_extras'
require 'scbi_math/scbi_narray'
# require 'scbi_math/float_extras'

# require 'scbi_math/scbi_stats'

module ScbiMath
  VERSION = '0.0.1'
end