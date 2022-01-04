require "../caesercipher.rb"

describe CaesarCipher do
    subject {cipher = CaesarCipher.new}
    describe ".caesercipher" do
        it "returns input string shifted to the shift factor" do
            expect(subject.caesar_cipher("Hello", 5)).to eql("Mjqqt")
        end

        it "shifts backward with reverse factor" do
            expect(subject.caesar_cipher("Hello", -5)).to eql("Czggj")
        end

        it "loops after z back to a" do
            expect(subject.caesar_cipher("X", 5)).to eql("C")
        end

        it "loops back from a to z with negative shift" do
            expect(subject.caesar_cipher("C", -5)).to eql("X")
        end
        it "return any other string as itself" do
            expect(subject.caesar_cipher("5", 3)).to eql("5")
        end
    end
end