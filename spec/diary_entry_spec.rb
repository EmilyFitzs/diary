require 'diary_entry'
require 'diary_locked'

describe DiaryEntry do 

  it { is_expected.to respond_to(:add_entry) } 
  it { is_expected.to respond_to(:get_entry) } 

  describe '#add_entry' do
    context 'when diary is locked' do
      it 'raises an error' do
        error_message = "Cannot create entry. Diary is locked!"
        expect{ subject.add_entry }.to raise_error error_message
      end
    end
  end

  describe '#get_entry' do
    context 'when diary is locked' do
      it 'raises an error' do
        error_message = "Cannot get entries. Diary is locked!"

        expect{ subject.get_entry }.to raise_error error_message
      end
    end
  end
end