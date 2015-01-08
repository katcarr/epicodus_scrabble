require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  it('returns correct scrabble score for one letter words') do
    expect("a".scrabble_score()).to(eq(1))
  end

  it('returns correct scrabble score for a multi-letter word')do
    expect("pad".scrabble_score()).to(eq(6))
  end

  it('returns correct scrabble score for a multi-letter word')do
    expect("question".scrabble_score()).to(eq(17))
  end

  it('returns correct scrabble score even if capital letters are entered') do
    expect("QuaCk".scrabble_score()).to(eq(20))
  end

  it("returns correct scrabble score for a word with all letters") do
    expect("abcdefghijklmnopqrstuvwxyz".scrabble_score()).to(eq(87))
  end

  it("returns correct scrabble score even with reused letters") do
    expect("dabbled".scrabble_score()).to(eq(13))
  end

end
