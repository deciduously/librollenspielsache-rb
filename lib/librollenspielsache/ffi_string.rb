# frozen_string_literal: true

require 'ffi'

module Rollenspielsache
  # Wrapped up string
  class FFIString < FFI::AutoPointer
    def self.release
      Binding.free self
    end

    def to_s
      @to_s ||= read_string.force_encoding('UTF-8')
    end

    # Rust externs
    module Binding
      extend FFI::Library
      ffi_lib 'librollenspielsache'

      # Pass back to Rust's memory management
      attach_function :free, :ffi_string_free, [FFIString], :void
    end
  end
end
