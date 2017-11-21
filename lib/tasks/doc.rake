namespace :doc do
  desc 'Get status of documentation coverage using rdoc'
  task :status do
    sh 'rdoc stats -C'
  end
  desc 'Generate documentation using rdoc'
  task :generate do
    sh 'rdoc -o docs'
  end
end
