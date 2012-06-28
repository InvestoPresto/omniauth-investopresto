# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-single-signon/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-single-signon"
  s.version     = OmniAuth::SingleSignon::VERSION
  s.authors     = ["Sankara Narayanan", "Subhash Chandra"]
  s.email       = ["sankara.narayanan@investopresto.com", "TMaYaD+github@gmail.com"]
  s.homepage    = "https://github.com/InvestoPresto/omniauth-single-signon"
  s.summary     = %q{OmniAuth strategy for SingleSignon}
  s.description = %q{OmniAuth strategy for SingleSignon}

  s.rubyforge_project = "omniauth-single-signon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
