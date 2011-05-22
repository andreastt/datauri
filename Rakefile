require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = 'datauri'
  gem.homepage = 'http://github.com/andreastt/datauri'
  gem.license = 'GPLv3'
  gem.summary = 'Compiles "data" URL scheme addresses from file or input'
  gem.description = <<EOS
"data" URL scheme defines a way to embed (small) media type data
directly inline in a document.  This works for any kind of data and is
supported by most modern browsers.
EOS
  gem.email = 'ato@fsfe.org'
  gem.authors = ['Andreas Tolf Tolfsen']
  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
