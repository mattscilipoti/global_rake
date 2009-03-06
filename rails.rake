namespace :rails do
  namespace :svn do
    task :set_exec do
      system "svn propset svn:executable ./script `find ./script -type f | grep -v '.svn'` public/dispatch.*"
    end
  end
end

