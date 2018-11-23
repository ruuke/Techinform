path = 'exemlpe.rb'
simbols_count = []

lines = IO.readlines(path).map do |line|
  line_simbols_count = line.gsub(/[[:space:]]/, '').size
  simbols_count << line_simbols_count
  "#simbols in line #{line_simbols_count.to_s}" +"\n" + line
end

File.open(path, 'w') do |file|
  file.puts lines
end


File.open(path, 'a+') do |file|
  file.write "#simbols in file #{simbols_count.sum.to_s}"
end