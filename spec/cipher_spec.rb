require_relative '../lib/cipher.rb'

RSpec.describe 'Cipher: ' do
    describe '#cipher' do

        context "'Hello' shift 5 times" do
            it "returns 'Mjqqt'" do
                expect(Cipher.new(5).cipher('Hello')).to eq('Mjqqt')
            end
        end

        context "'How are you' shift 12 times" do
            it "returns 'Tai mdq kag'" do
                expect(Cipher.new(12).cipher('How are you')).to eq('Tai mdq kag')
            end
        end       
     end
end