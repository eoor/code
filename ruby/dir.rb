(Dir["/users/username/**/*"].reject { |fn| File.directory?(fn) }).each do |x|
  puts x
end