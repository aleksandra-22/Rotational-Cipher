require_relative '../lib/cipher.rb'

RSpec.describe Cipher do
    describe '#encrypt' do

        context "'The quick brown fox jumps over a lazy dog' shift 5 times" do
            it "returns 'Ymj vznhp gwtbs ktc ozrux tajw f qfed itl'" do
                expect(Cipher.new(5).encrypt('The quick brown fox jumps over a lazy dog')).to eq('Ymj vznhp gwtbs ktc ozrux tajw f qfed itl')
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

        context "'How are you' shift 26 times" do
            it "returns 'How are you'" do
                expect(Cipher.new(26).encrypt('How are you')).to eq('How are you')
            end
        end
        
        context "'abc' shift 0 times" do
            it "returns 'abc'" do
                expect(Cipher.new(0).encrypt('abc')).to eq('abc')
            end
        end

     end
end
