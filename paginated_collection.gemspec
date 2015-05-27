# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paginated_collection/version'

Gem::Specification.new do |spec|
  spec.name          = "paginated_collection"
  spec.version       = PaginatedCollection::VERSION
  spec.authors       = ["Sia. S."]
  spec.email         = ["sia.s.saj@gmail.com"]

  spec.summary       = %q{Paginated enumerable collections for ruby}
  spec.description   = %q{Provides paginated enumerable collections for ruby programs?}
  spec.homepage      = "http://github.com/siassaj/paginated_collection"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
