require 'rio' rescue 'Missing gem: gem install rio.'
namespace :file do
  namespace :ls do
    desc "List files, where size is 0"
    task :zero do
      rio('.').all.files.collect { |entrio| puts entrio.realpath.to_s if entrio.zero? }
    end
  end

  
end

