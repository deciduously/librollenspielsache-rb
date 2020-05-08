# frozen_string_literal: true

require 'ffi'
require 'librollenspielsache/dice/roll'
require 'librollenspielsache/dice/roll_result'
require 'librollenspielsache/version'

module Rollenspielsache
  class Error < StandardError; end
  # Rust exported fns
  module Binding
    include Rollenspielsache::Dice
    extend FFI::Library
    ffi_lib 'librollenspielsache'

    # Free a string that was passed from the Rust library
    attach_function :free_str, :roll_from_str, [:string], :void
  end
end
