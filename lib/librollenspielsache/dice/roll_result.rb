# frozen_string_literal: true

require 'ffi'

module Librollenspielsache
  module Dice
    # The Result from a roll
    class RollResult < FFI::AutoPointer
      def self.release(ptr)
        Binding.free ptr
      end

      def to_s(ptr)
        Binding.to_s ptr
      end

      # Rust externs
      module Binding
        extend FFI::Library
        ffi_lib 'librollenspielsache'

        attach_function :to_s, :roll_result_to_string, [:pointer], :string
        attach_function :free, :roll_result_free, [:pointer], :void
      end
    end
  end
end
