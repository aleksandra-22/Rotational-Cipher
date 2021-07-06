require_relative '../lib/cipher.rb'

RSpec.describe Cipher do
    describe '#encrypt' do

        context "'The quick brown fox jumps over a lazy dog' shift 5 times" do
            it "returns 'Ymj vznhp gwtbs ktc ozrux tajw f qfed itl'" do
                expect(Cipher.new(5).encrypt('The quick brown fox jumps over a lazy dog')).to eq('Ymj vznhp gwtbs ktc ozrux tajw f qfed itl')
            end
        end

        context "'omg' shift 5 times" do
            it "returns 'trl'" do
                expect(Cipher.new(5).encrypt('omg')).to eq('trl')
            end
        end    

        context "'How are you' shift 13 times" do
            it "returns 'Ubj ner lbh'" do
                expect(Cipher.new(13).encrypt('How are you')).to eq('Ubj ner lbh')
            end
        end    

        context "'bzt' shift 13 times" do
            it "returns 'omg'" do
                expect(Cipher.new(13).encrypt('bzt')).to eq('omg')
            end
        end

        context "'The quick brown fox jumps over the lazy dog' shift 13 times" do
            it "returns 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt'" do
                expect(Cipher.new(13).encrypt('The quick brown fox jumps over the lazy dog')).to eq('Gur dhvpx oebja sbk whzcf bire gur ynml qbt')
            end
        end

        context "'Gur dhvpx oebja sbk whzcf bire gur ynml qbt' shift 13 times" do
            it "returns 'The quick brown fox jumps over the lazy dog'" do
                expect(Cipher.new(13).encrypt('Gur dhvpx oebja sbk whzcf bire gur ynml qbt')).to eq('The quick brown fox jumps over the lazy dog')
            end
        end

        context "'How are you' shift 26 times" do
            it "returns 'How are you'" do
                expect(Cipher.new(26).encrypt('How are you')).to eq('How are you')
            end
        end

        context "'Cool' shift 26 times" do
            it "returns 'Cool'" do
                expect(Cipher.new(26).encrypt('Cool')).to eq('Cool')
            end
        end
        
        context "'abc' shift 0 times" do
            it "returns 'abc'" do
                expect(Cipher.new(0).encrypt('abc')).to eq('abc')
            end
        end

        context "'c' shift 0 times" do
            it "returns 'c'" do
                expect(Cipher.new(0).encrypt('c')).to eq('c')
            end
        end

     end
end
