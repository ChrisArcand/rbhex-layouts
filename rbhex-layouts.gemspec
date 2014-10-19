# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbhex/layouts/version'

Gem::Specification.new do |spec|
  spec.name          = "rbhex-layouts"
  spec.version       = Rbhex::Layouts::VERSION
  spec.authors       = ["Chris Arcand"]
  spec.email         = ["chris@chrisarcand.com"]
  spec.description   = "Ruby curses/ncurses templates for easy application development on text terminals"
  spec.summary       = "Ruby Ncurses Toolkit pre-made templates"
  spec.homepage      = "https://github.com/ChrisArcand/rbhex-layouts"
  spec.license       = "The Ruby License"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if Rbhex::Layouts::VERSION =~ /[a-zA-Z]+/
    spec.add_dependency "rbhex-core", "= #{Rbhex::Layouts::VERSION}"
  else
    spec.add_dependency "rbhex-core", "~> #{Rbhex::Layouts::VERSION.split('.')[0..1].concat(['0']).join('.')}"
  end
end
