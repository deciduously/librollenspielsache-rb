# frozen_string_literal: true

require_relative 'lib/librollenspielsache/version'

Gem::Specification.new do |spec|
  spec.name          = 'librollenspielsache-rb'
  spec.version       = Rollenspielsache::VERSION
  spec.authors       = ['Ben Lovy']
  spec.email         = ['ben@deciduously.com']

  spec.summary       = 'Ruby binding for librolenspiesache.'
  spec.description   = "Complete Ruby-idiomatic wrapper for librollenspielsache.  WIP - there's very little to the underlying binding, and as such, very little here.  Version numbers for both should remain in sync, and this won't be \"usable\" until 1.0."
  spec.homepage      = 'https://rubygems.org/gems/librollenspielsache-rb'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/deciduously/librollenspielsache-rb'
  spec.metadata['changelog_uri'] = 'https://github.com/deciduously/librollenspielsache-rb/blob/master/CHANGELOG.md'

  spec.add_dependency 'dotenv'
  spec.add_dependency 'ffi'

  spec.add_development_dependency 'rubocop'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
