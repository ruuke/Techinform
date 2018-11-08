def password_gen (len = 6)
  symbols = ['a'..'z', 'A'..'Z', 0..9].map { |range| range.to_a }.flatten
  symbols.sample(len).shuffle.join
end