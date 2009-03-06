namespace :git do
  desc "append defaults to .gitignore file"
  task :ignore do
    system 'cat ~/.rake/rails.gitignore >> .gitignore'
  end
end
