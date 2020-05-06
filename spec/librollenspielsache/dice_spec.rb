# frozen_string_literal: true

RSpec.describe Rollenspielsache::Dice do
  it 'obtains a roll from a string' do
    roll = Rollenspielsache::Dice::Roll.from_str('2d10')

    expect(roll.base).to eq(10)
    expect(roll.repeat).to eq(2)
  end

  it 'rolls within given range' do
    roll = Rollenspielsache::Dice::Roll.from_str('1d6')
    result = roll.execute
    total = result.total
    expect(total).to be >= 1
    expect(total).to be <= 6
  end
end
