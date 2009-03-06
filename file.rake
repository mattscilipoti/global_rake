begin
  require 'rio'
rescue LoadError
  raise 'Missing gem: gem install rio.'
end

namespace :file do
  namespace :ls do
    desc "List files, where size is 0"
    task :zero do
      rio('.').all.files { |entrio| puts entrio.realpath.to_s if entrio.zero? }
    end
  end
end

