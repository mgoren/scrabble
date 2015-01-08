require('rspec')
require('scrabble')

describe('String#scrabble') do

  it('will take in a one character string containing "a" and return a point value') do
    expect("a".scrabble()).to(eq(1))
  end

  it('will take in a one character string and return correct point value') do
    expect("k".scrabble()).to(eq(5))
  end

  it('will take in a string and return the total point value') do
    expect("foo".scrabble()).to(eq(6))
  end

  it('will work for a string regardless of case') do
    expect("FoO".scrabble()).to(eq(6))
  end


end
