# frozen_string_literal: true

require 'ffi'
require_relative '../ffi_string'

module Rollenspielsache
  module Dice
    # The Result from a roll
    class RollResult < FFI::AutoPointer
      def self.release(ptr)
        Binding.free ptr
      end

      def to_json(_optional = nil)
        wrap = Binding.to_json self
        wrap.to_s
      end

      def to_s
        Binding.to_string self
      end

      def total
        Binding.total self
      end

      # Rust externs
      module Binding
        include Rollenspielsache
        extend FFI::Library
        ffi_lib 'librollenspielsache'

        # Rust `to_json()`
        attach_function :to_json, :roll_result_to_json, [RollResult], FFIString
        # Rust `to_string()`
        attach_function :to_string, :roll_result_to_string, [RollResult], FFIString
        # It comes back as a base and modifier, total combines them
        attach_function :total, :roll_result_total, [RollResult], :int
        # Pass back to Rust memory management
        attach_function :free, :roll_result_free, [RollResult], :void
      end
    end
  end
end
