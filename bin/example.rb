# typed: true

require 'rubygems'
require 'sorbet-runtime'

module Test
  class A
    extend T::Sig

    sig {params(a: T.untyped).void}
    def initialize(a)
      @a = T.let(a, T.untyped)
    end

    def hello_world
      puts "Hello world"
    end

  end
end

#a = Test::A.new(1)
#a.hello_world

def run
  a ||= Class.new(Test::A) do

    def hello_world
      puts "Hello world"
    end

  end.new(self)

  a.hello_world
end


run
