# frozen_string_literal: true

include Librollenspielsache

RSpec.describe Librollenspielsache do
  it 'has a version number' do
    expect(VERSION).not_to be nil
  end

  it 'Obtains a roll from a string' do
    roll = Dice::Roll.from_str('2d10')

    expect(roll.base).to eq(10)
    expect(roll.repeat).to eq(2)
  end
end
