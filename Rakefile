require "bundler/gem_tasks"
task :default => :spec

desc "Ejecutar las expectativas de la clase Alimento"
task :spec do
  sh "rspec -I. spec/alimento_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/alimento_spec.rb --format documentation"
end