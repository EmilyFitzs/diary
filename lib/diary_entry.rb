require 'diary_locked'
class DiaryEntry
  def initialize
    @locked = Diary.new
  end

  def add_entry
    raise 'Cannot create entry. Diary is locked!' if @locked.locked
  end

  def get_entry
    raise 'Cannot get entries. Diary is locked!' if @locked.locked
  end

end