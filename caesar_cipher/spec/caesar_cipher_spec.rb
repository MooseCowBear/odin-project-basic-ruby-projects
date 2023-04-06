require './lib/caesar_cipher.rb'

describe '#cipher_shift' do
  context "when ascii code represents a letter" do
    it "returns ascii code plus shift factor" do
      expect(cipher_shift(97, 25)).to eql(122)
    end
    it "loops around to beginning of letter range when shift letter beyond z" do
      expect(cipher_shift(90, 1)).to eql(65)
    end
  end
  context "when ascii code does not represent a letter" do
    it "returns number without shifting" do
      expect(cipher_shift(30, 10)).to eql(30)
    end
  end
end

describe '#caesar_cipher' do
  context "when code contains only letters" do
    it "maintains original case of letters" do
      expect(caesar_cipher("Dog", 3)).to eql("Grj")
    end
    it "accepts negative shifts" do
      expect(caesar_cipher("dog", -2)).to eql("bme")
    end
    it "accepts shifts of greater than 26" do
      expect(caesar_cipher("dog", 29)).to eql("grj")
    end
    it "accepts shifts of less than -26" do 
      expect(caesar_cipher("dog", -28)).to eql("bme")
    end
  end
  context "when code contains combination of letters and non-letters" do
    it "shifts letters but not non-letters" do
      expect(caesar_cipher("The dog is sleeping on the mat!", 5)).to eql("Ymj itl nx xqjjunsl ts ymj rfy!")
    end
  end
  context "accepts empty string" do
    it "returns empty string" do
      expect(caesar_cipher("", 12)).to eql("")
    end
  end
end