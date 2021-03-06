# -*- encoding: utf-8 -*-
require File.expand_path("../lib/sba/version", __FILE__)

Gem::Specification.new do |s|
  s.add_development_dependency "json"
  s.add_development_dependency "maruku"
  s.add_development_dependency "nokogiri"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "webmock"
  s.add_development_dependency "yard"
  s.add_runtime_dependency "hashie", "~> 1.2"
  s.add_runtime_dependency "faraday", "~> 0.5.3"
  s.add_runtime_dependency "faraday_middleware", "~> 0.3.0"
  s.add_runtime_dependency "multi_json", "~> 1.0"
  s.add_runtime_dependency "multi_xml", "~> 0.4"
  s.authors = ["Dan Melton", "Ryan Resella"]
  s.description = %q{A Ruby wrapper for the SBA APIs.}
  s.post_install_message =<<eos
Using this gem in your project or organization? Add it to the apps wiki!
https://github.com/codeforamerica/sba/wiki/apps
eos
  s.email = ["dan@codeforamerica.org", "ryan@codeforamerica.org"]
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.homepage = "http://rubygems.org/gems/sba"
  s.name = "sba"
  s.platform = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.summary = s.description
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = SBA::VERSION
end
