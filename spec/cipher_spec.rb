require_relative '../cipher/cipher.rb'

RSpec.describe 'Cipher: ' do
    describe '#rot13' do
        context 'level 1' do
            it 'encodes text using rot 13' do
                expect(rot13('a')).to eq('n')
                expect(rot13('h')).to eq('u')
            end
        end
    end
    describe '#rot_word' do
        context 'level 2' do
            it 'properly encodes text with spaces' do
                expect(rot_word('hello')).to eq('uryyb')
                expect(rot_word('how are you')).to eq('ubj ner lbh')

            end
        end
    end  
end