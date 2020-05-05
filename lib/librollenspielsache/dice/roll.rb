# frozen_string_literal: true

module Librollenspielsache
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

      # Rust exported fns
      module Binding
        extend FFI::Library
        ffi_lib 'librollenspielsache'

        # Builds a new Roll from a string
        attach_function :from_str, :roll_from_str, [:string], Roll
        # Free the object
        attach_function :free, :roll_free, [], :void
        # Returns a pointer to RollResult
        attach_function :execute, :roll_execute, [Roll], :pointer
        # Get the base
        attach_function :get_base, :roll_base, [Roll], :int
        # Get the repeat
        attach_function :get_repeat, :roll_repeat, [Roll], :uint
      end
    end
  end
end
