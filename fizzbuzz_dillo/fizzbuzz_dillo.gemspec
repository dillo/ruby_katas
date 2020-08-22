require_relative 'lib/fizzbuzz/version'

Gem::Specification.new do |spec|
  spec.name          = 'fizzbuzz_dillo'
  spec.version       = Fizzbuzz::VERSION
  spec.authors       = ['Dillo Raju']
  spec.email         = ['dilloshion@gmail.com']

  spec.summary       = 'FizzBuzz Gem'
  spec.description   = 'Generate FizzBuzz for a given set of numbers.'
  spec.homepage      = 'https://www.example.com'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.1')

  spec.metadata['allowed_push_host'] = 'https://www.example.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://www.example.com'
  spec.metadata['changelog_uri'] = 'https://www.example.com'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been
  # added into git.
  spec.files = Dir['lib/**/*.rb']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
