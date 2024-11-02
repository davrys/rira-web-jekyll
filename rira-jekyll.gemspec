# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rira-jekyll"
  spec.version       = "0.1.0"
  spec.authors       = ["Rí Ra"]
  # spec.email         = [""]

  spec.summary       = %q{Web for "Rí Ra" music band. http://rira.cz}
  spec.homepage      = "http://rira.cz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|_sass|LICENSE|README)/i}) }

  spec.add_development_dependency "jekyll", "~> 4.3.3"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
