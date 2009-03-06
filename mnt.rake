namespace :mnt do
  desc "Mount the windows partition"
  task :win do
    system 'sudo mount -t ntfs /dev/sda2 /mnt/win'
  end
end


