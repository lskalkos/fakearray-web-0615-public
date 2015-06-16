require 'pry'
class FakeArray < Array
  # you'll need a splat in this class somewhere


  def initialize(*entries)
    @entries = entries
  end

  def [](index)
    @entries[index]
  end

  def []=(index, new_entry)
    @entries[index] = new_entry
  end

  def each
    @entries.each{|entry| yield entry}
  end

  def first
    @entries[0]
  end


end