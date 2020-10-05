print "Iveskite gauta pazymi: "
a = gets.chomp.to_i
if a < 0 || a > 10
	puts "Neteisingai ivesti duomenys."
elsif a > 5 && a <= 10
	puts "Egzaminas islaikytas."
else
	puts "Egzaminas neislaikytas."
end
