# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$:.unshift(lib) unless $:.include?(lib)
require 'houcluttex/version'

Gem::Specification.new do |spec|
  spec.name = 'houcluttex'
  spec.version       = Houcluttex::VERSION
  spec.authors       = ['Ishotihadus']
  spec.email         = ['hanachan.pao@gmail.com']

  spec.summary       = 'configurable cluttex wrapper'
  spec.description   = 'configurable cluttex wrapper'
  spec.homepage      = 'https://github.com/ishotihadus/houcluttex'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject{|f| f.match(%r{^(test|spec|features)/})}
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}){|f| File.basename(f)}
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
