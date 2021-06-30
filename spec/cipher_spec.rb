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









    
end