# typed: true

require 'rubygems'
require 'sorbet-runtime'

class A
  extend T::Sig

  sig {params(a: Integer).void}
  def initialize(a)
  end

  def hello_world
    puts "Hello world"
  end

end

a = Class.new(A) do

end.new(1)

a.hello_world


a = Class.new(A) do

end.new('s')
