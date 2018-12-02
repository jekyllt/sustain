# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "sustain4-theme"
  spec.version       = "1.0.0"
  spec.authors       = ["John Pitchko"]
  spec.email         = ["john.pitchko@icloud.com"]

  spec.summary       = "Personal blog built with Bootstrap, SASS, powered by Jekyll and freely hosted in Github pages."
  spec.homepage      = "https://github.com/johnpitchko/sustain4"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
