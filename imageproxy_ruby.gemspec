# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'imageproxy_ruby'
  s.version = '0.0.2'
  s.summary = 'Ruby client for Image Proxy Server'
  s.description = 'A Ruby client for Image Proxy Server'
  s.authors = ['azolf']
  s.email = 'amirhosein.zlf@gmail.com'
  s.files = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.7'
  s.homepage = 'https://github.com/azolf/imageproxy_ruby'
  s.license = 'MIT'
  s.metadata = {
    'rubygems_mfa_required' => 'true',
    'documentation_uri' => 'https://github.com/azolf/imageproxy_ruby'
  }
end
