# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'no_geese'
  spec.version       = '0.1.0'
  spec.authors       = ['Danny Collier']
  spec.homepage      = 'https://github.com/dcollie2/no-geese'
  spec.summary       = 'Asserts that no geeese are present in your application.'
  spec.description   = 'This gem provides a simple way to be reassured that no geese are present in your Ruby
                      application. Dislaimer: this does not in any way prevent actual geese from infiltrating
                      your code.'
  spec.add_runtime_dependency 'rails', '~> 8.0.1'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rails', '~> 8.0.1'
  spec.required_ruby_version = '>= 2.7'
end
