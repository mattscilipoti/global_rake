desc "alias => ext:auto"
task :ext => 'ext:auto'

namespace :ext do
  desc "Stop using external monitor."
  task :stop do
    system('xrandr --output LVDS --auto --output VGA --off')
  end

  desc "Use external monitor (1024x768)"
  task :r1024x768 do
    system('xrandr --output VGA --mode 1024x768')
  end

  desc "Use external monitor (auto)"
  task :auto do
    system('xrandr --output VGA --auto')
  end
 
  desc "Big monitor (1440+1440x900)"
  task :r2880x900 do
    system 'xrandr --output VGA --right-of LVDS --mode 1440x900'
  end
  
  desc "alias => r1024x768"
  task :present => :r1024x768
end
