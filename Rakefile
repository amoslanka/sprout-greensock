require 'bundler'
Bundler.require
require 'rake/clean'
CLOBBER.add('pkg')
CLOBBER.add('vendor')
CLOBBER.add('.bundle')

filename = "#{Greensock::NAME}-#{Greensock::VERSION}"

# 
# Gem tasks
# 

namespace :gem do
  directory "pkg"
  
  desc 'Build the gem'
  task :build => 'pkg' do
    system "gem build #{Greensock::NAME}.gemspec"
    system "mv #{filename}.gem pkg/#{filename}.gem"
  end

  desc "Build and install #{filename}.gem"
  task :install => :build do
    system "gem install pkg/#{filename}"
  end

  desc "Build and release #{filename}.gem to rubygems.org"
  task :release => :build do
    system "gem push pkg/#{filename}.gem"
  end
end
