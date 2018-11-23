path = 'test.txt'
text_file = []
File.open(path, 'r') do |f|
  f.each do |line|
    text_file.concat(line.split.map(&:to_s))
  end
end

frequency = text_file.inject( Hash .new(0)) { |result, word|
result.update({ word => 1 }) { |key, old_value, new_value|
old_value + new_value } }

puts frequency
