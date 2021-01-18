require './caesar-cipher.rb'

describe 'caeser cipher' do
  it "Shifts a letter positive spaces" do
    expect(caesar_cipher('a', 5)).to eql 'f'
  end

  it 'Shifts a ltter negative spaces' do
    expect(caesar_cipher('z', -5)).to eql 'u'
  end

  it 'Shifts an uppercase letter' do
    expect(caesar_cipher('A', 5)).to eql 'F'
  end

  it 'Wraps letters past z' do
    expect(caesar_cipher('Y', 5)).to eql 'D'
  end

  it 'Wraps letters negatively' do
    expect(caesar_cipher('d', -5)).to eql 'y'
  end

  it 'Encodes more than one letter at once' do
    expect(caesar_cipher('Hello', 5)).to eql 'Mjqqt'
  end

  it 'Does not modify punctuation or spaces' do
    expect(caesar_cipher('Hello, How are you today?', 5)).to eql 'Mjqqt, Mtb fwj dtz ytifd?'
  end

  it 'Handles large shift numbers' do
    expect(caesar_cipher('Hello, How are you today?', 500)).to eql 'Nkrru, Nuc gxk eua zujge?'
  end
end