# frozen_string_literal: true

TEST_REPS = 200

RSpec.describe Rollenspielsache::Dice do
  it 'obtains a roll from a string' do
    roll = Rollenspielsache::Dice::Roll.from_str('2d10')

    expect(roll.base).to eq(10)
    expect(roll.repeat).to eq(2)
  end

  it 'rolls within given range' do
    roll = Rollenspielsache::Dice::Roll.from_str('1d6')
    TEST_REPS.times do
      total = roll.execute.total
      expect(total).to be >= 1
      expect(total).to be <= 6
    end
  end

  it 'adds a positive modifier' do
    roll = Rollenspielsache::Dice::Roll.from_str('1d6+20')
    TEST_REPS.times do
      total = roll.execute.total
      expect(total).to be >= 6
      expect(total).to be <= 20 + 6
    end
  end

  it 'adds a negative modifier' do
    roll = Rollenspielsache::Dice::Roll.from_str('2d6-1')
    TEST_REPS.times do
      total = roll.execute.total
      expect(total).to be >= 1
      expect(total).to be <= 6 * 20 - 10
    end
  end
end
