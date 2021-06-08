class Diary
  attr_reader :locked
  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry
    raise 'Cannot create entry. Diary is locked!' if @locked
  end

  def get_entry
    raise 'Cannot get entries. Diary is locked!' if @locked
  end

end