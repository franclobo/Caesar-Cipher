require_relative '../caesar_cipher'

describe Crypto do

  it 'encodes a string' do
    crypto = Crypto.new('abc', 1)
    expect(crypto.encode).to eq('bcd')
  end

  it 'encodes a string with a negative shift' do
    crypto = Crypto.new('abc', -1)
    expect(crypto.encode).to eq('zab')
  end

  it 'encodes a string with a shift greater than 26' do
    crypto = Crypto.new('abc', 27)
    expect(crypto.encode).to eq('bcd')
  end

  it 'encodes a string with a shift greater than 26 and negative' do
    crypto = Crypto.new('abc', -27)
    expect(crypto.encode).to eq('zab')
  end

  it 'encodes a string with punctuation' do
    crypto = Crypto.new('abc!', 1)
    expect(crypto.encode).to eq('bcd!')
  end

  it 'encodes a string with numbers' do
    crypto = Crypto.new('abc1', 1)
    expect(crypto.encode).to eq('bcd1')
  end

  it 'encodes a string with all letters' do
    crypto = Crypto.new('The quick brown fox jumps over the lazy dog.', 5)
    expect(crypto.encode).to eq('Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl.')
  end

  it 'decodes a string' do
    crypto = Crypto.new('bcd', 1)
    expect(crypto.decode).to eq('abc')
  end

  it 'decodes a string with a negative shift' do
    crypto = Crypto.new('zab', -1)
    expect(crypto.decode).to eq('abc')
  end

  it 'decodes a string with a shift greater than 26' do
    crypto = Crypto.new('bcd', 27)
    expect(crypto.decode).to eq('abc')
  end

  it 'decodes a string with a shift greater than 26 and negative' do
    crypto = Crypto.new('zab', -27)
    expect(crypto.decode).to eq('abc')
  end

  it 'decodes a string with punctuation' do
    crypto = Crypto.new('bcd!', 1)
    expect(crypto.decode).to eq('abc!')
  end

  it 'decodes a string with numbers' do
    crypto = Crypto.new('bcd1', 1)
    expect(crypto.decode).to eq('abc1')
  end

  it 'decodes a string with all letters' do
    crypto = Crypto.new('Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl.', 5)
    expect(crypto.decode).to eq('The quick brown fox jumps over the lazy dog.')
  end
end

