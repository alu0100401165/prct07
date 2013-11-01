$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
  sh "rspec -I. spec/fraccion_spec.rb"
end

desc "Ejecutar las espectativas de la clase Fraccion con documentacion"
task :test do
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "rspec -I. spec/fraccion_spec.rb --format html"
end

desc "Run frac_main.rb"
task :bin do
  sh "ruby lib/frac_main.rb"
end

