# frozen_string_literal: true

require 'ffi'

module Rollenspielsache
  module Dice
    # The Result from a roll
    class RollResult < FFI::AutoPointer
      def self.release(ptr)
        Binding.free ptr
      end

      def to_s
        Binding.to_s self
      end

      def total
        Binding.total self
      end

      # Rust externs
      module Binding
        extend FFI::Library
        ffi_lib 'librollenspielsache'

        # Rust `to_string()`
        attach_function :to_s, :roll_result_to_string, [:pointer], :string
        # It comes back as a base and modifier, total combines them
        attach_function :total, :roll_result_total, [:pointer], :int
        # Pass back to Rust memory management
        attach_function :free, :roll_result_free, [:pointer], :void
      end
    end
  end
end
