require 'diary_locked'
require 'diary_entry'

describe Diary do

  it { is_expected.to respond_to(:lock) } 
  it { is_expected.to respond_to(:unlock) } 
  
  describe '#unlock' do
    it 'unlocks diary' do
      subject.unlock
      expect(subject.locked).to eq(false)
    end
  end

  describe '#lock' do
    it 'locks diary' do
      subject.lock
      expect(subject.lock).to eq(true)
    end
  end
end