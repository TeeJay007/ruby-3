puts "Iveskite triju krastiniu ilgius:"
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

if a > 0 && b > 0 && c > 0
	p = (a + b + c) / 2.0
	plotas = Math.sqrt(p * (p - a) * (p - b) * (p - c))
	if a != b && b != c && a != b && plotas > 0
		puts "Trikamis yra ivairiakrastis ir jo plotas: #{plotas}"
	elsif a == b && b == c && a == b && plotas > 0
		puts "Trikamis yra lygiakrastis ir jo plotas: #{plotas}"
	elsif (a == b || b == c || a == c) && plotas > 0
		puts "Trikamis yra lygiasonis ir jo plotas: #{plotas}"
	else
		puts "Trikampio sudaryti neimanoma"
	end
else
	puts "Trikampio sudaryti neimanoma"
end
