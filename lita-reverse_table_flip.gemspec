lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lita/reverse_table_flip/version'

Gem::Specification.new do |spec|
  spec.name          = "lita-reverse_table_flip"
  spec.version       = Lita::ReverseTableFlip::VERSION
  spec.authors       = ["Adam Melnyk"]
  spec.email         = ["adam.melnyk@gmail.com"]
  spec.description   = %q{"Unflips" a flipped table}
  spec.summary       = %q{"Unflips" a flipped table}
  spec.homepage      = "https://github.com/amaabca/lita-reverse_table_flip"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end

