# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emailarray = []
    @emailarray = emails.tr(',','').split(" ")
    @emailarray = removeduplicate(@emailarray)
  end

  def parse
    @emailarray
  end

  Private

  def removeduplicate(emails)
    newarray = []
    emails.map do |addresses| 
      if newarray.include?(addresses)
        newarray << addresses
      end
    end
  end

end
