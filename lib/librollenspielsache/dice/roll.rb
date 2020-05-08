# frozen_string_literal: true

require_relative 'roll_result'
require_relative '../ffi_string'

module Rollenspielsache
  module Dice
    # A single roll
    class Roll < FFI::AutoPointer
      class << self
        def release(ptr)
          Binding.free ptr
        end

        def from_str(str)
          Binding.from_str str
        end
      end

      def execute
        Binding.execute self
      end

      def base
        Binding.get_base self
      end

      def repeat
        Binding.get_repeat self
      end

      def to_s
        Binding.to_string self
      end

      # Rust exported fns
      module Binding
        include Rollenspielsache
        include Rollenspielsache::Dice
        extend FFI::Library
        ffi_lib 'librollenspielsache'

        # Builds a new Roll from a string
        attach_function :from_str, :roll_from_str, [:string], Roll
        # Free the object
        attach_function :free, :roll_free, [], :void
        # Returns a pointer to RollResult
        attach_function :execute, :roll_execute, [Roll], Dice::RollResult
        # Get the string
        attach_function :to_string, :roll_from_str, [Roll], FFIString
        # Get the base
        attach_function :get_base, :roll_base, [Roll], :int
        # Get the repeat
        attach_function :get_repeat, :roll_repeat, [Roll], :uint
      end
    end
  end
end
