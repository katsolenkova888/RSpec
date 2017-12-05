require 'rome_converter'

describe RomeConverter do
	describe ".to_rome" do
		context "basic convertions" do
			it "converts 1 to 'I'" do
				digit = RomeConverter.new.to_rom(1)
				expect(digit).to eql('I')
			end		
			it "converts 5 to 'V'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('V')
			end
			it "converts 10 to 'X'" do
				digit = RomeConverter.new.to_rom(10)
				expect(digit).to eql('X')
			end
			it "converts 50 to 'L'" do
				digit = RomeConverter.new.to_rom(50)
				expect(digit).to eql('L')
			end
			it "converts 100 to 'C'" do
				digit = RomeConverter.new.to_rom(100)
				expect(digit).to eql('C')
			end
			it "converts 500 to 'D'" do
				digit = RomeConverter.new.to_rom(500)
				expect(digit).to eql('D')
			end
			it "converts 1000 to 'M'" do
				digit = RomeConverter.new.to_rom(1000)
				expect(digit).to eql('M')
			end
	
		end
		context "other convertions" do
			it "converts 3 to 'III'" do
				digit = RomeConverter.new.to_rom(3)
				expect(digit).to eql('III')
			end
			it "converts 4 to 'IV'" do
				digit = RomeConverter.new.to_rom(4)
				expect(digit).to eql('IV')
			end
			it "converts 8 to 'VIII'" do
				digit = RomeConverter.new.to_rom(8)
				expect(digit).to eql('VIII')
			end
			it "converts 9 to 'IX'" do
				digit = RomeConverter.new.to_rom(9)
				expect(digit).to eql('IX')
			end
			it "converts 22 to 'XXII'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('XXII')
			end
			it "converts 49 to 'XLIX'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('XLIX')
			end
			it "converts 95 to 'XCV'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('XCV')
			end
			it "converts 2020 to 'MMXX'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('MMXX')
			end
			it "converts 1999 to 'MCMXCIX'" do
				digit = RomeConverter.new.to_rom(5)
				expect(digit).to eql('MCMXCIX')
			end
		
		end

	end

	describe ".to_dec" do
		context "other convertions to rome" do
			it "converts 'XCIV' to 94" do
				digit = RomeConverter.new.to_dec('XCIV')
				expect(digit).to eql(94)
			end
			it "converts 'XXVII' to 27" do
				digit = RomeConverter.new.to_dec('XXVII')
				expect(digit).to eql(27)
			end
			it "converts 'XCIX' to 99" do
				digit = RomeConverter.new.to_dec('XCIX')
				expect(digit).to eql(99)
			end
			it "converts 'LVII' to 57" do
				digit = RomeConverter.new.to_dec('LVII')
				expect(digit).to eql(57)
			end
			it "converts 'LX' to 60" do
				digit = RomeConverter.new.to_dec('LX')
				expect(digit).to eql(60)
			end
			

		end
		context "basic convertions to rome" do
			it "converts 'I' to 1" do
				digit = RomeConverter.new.to_dec('I')
				expect(digit).to eql(1)
			end
			it "converts 'X' to 10" do
				digit = RomeConverter.new.to_dec('X')
				expect(digit).to eql(10)
			end
			it "converts 'L' to 50" do
				digit = RomeConverter.new.to_dec('L')
				expect(digit).to eql(50)
			end
			it "converts 'C' to 100" do
				digit = RomeConverter.new.to_dec('C')
				expect(digit).to eql(100)
			end
			it "converts 'M' to 1000" do
				digit = RomeConverter.new.to_dec('M')
				expect(digit).to eql(1000)
			end

		end
	end
end
