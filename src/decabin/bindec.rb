# Copyleft no1ze.
# Author:	Salvatore 'no1ze' Criscione
def error(str)
	puts str
	exit
end

def b2d(bin = nil)
	error("You fail faggots") if bin == nil
	bin = bin.to_s.reverse
	t = 0 
	n = bin.length - 1 
	while n >= 0
		buff = bin[n].chr.to_i 
		if buff == 1 or buff == 0
			t += buff * (2**n)
			n -= 1
		else
			error("Are you stupid kid the binary is composite by number and not only 1/0?")
		end
	end
	t
end

def d2b(dec = nil)
	b = ""
	error("You fail faggots") if dec == nil
	dec = dec.to_i
	while dec >= 1 
		if dec % 2 == 0
			b = b + "0"
		else
			b = b + "1"
		end
		dec = (dec/2).to_i
	end
	return b.reverse
end
