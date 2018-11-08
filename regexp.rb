input = "user@profport.org;+888;info@profport.ru"
regexp = /\w+@/
puts input.gsub(regexp, '')
