# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'greensock/version'

Gem::Specification.new do |s|
  s.name        = Greensock::NAME
  s.version     = Greensock::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jack Doyle", "Amos Lanka"]
  s.email       = ["info@greensock.com", "amoslanka@gmail.com"]
  s.homepage    = "http://www.github.com/amoslanka/sprout-puremvc-as3"
  s.summary     = %q{Greensock’s free AS3 library including TweenLite, TweenMax, and LoaderMax, wrapped in a Sprout::Specification for implementation into a sprout project and Gem::Specification for distribution as a gem.}
  s.description = %q{**Note: The Greensock versioning does not parallel the versioning of this gem. See the README for which Greensock packages and versions are available in which gem version.}
  s.rubyforge_project = Greensock::NAME

  s.require_paths = ["lib"]
  
  s.files = Dir["{src,test,tests,asdoc,docs,doc,asdocs,lib,libs}/**/*", "bin/**/*.swc"]
  s.files.concat Dir["*.gemspec", "build*", "[A-Z]*[.a-z]*"]

  s.add_dependency 'flashsdk', '>= 1.0.0.pre'
  s.add_development_dependency 'rake'
end
