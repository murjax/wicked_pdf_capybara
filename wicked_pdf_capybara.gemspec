lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wicked_pdf_capybara/version'

Gem::Specification.new do |spec|
  spec.name          = 'wicked_pdf_capybara'
  spec.version       = WickedPdfCapybara::VERSION
  spec.authors       = ['Ryan Murphy']
  spec.email         = ['murjax@gmail.com']

  spec.summary       = %q{A Capybara extension to allow testing of Wicked PDF content.}
  spec.description   = %q{A Capybara extension to allow testing of Wicked PDF content.}
  spec.homepage      = 'https://github.com/murjax/wicked_pdf_capybara'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'pdf-reader', '>= 2.1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
