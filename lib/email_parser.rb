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
    @newarray = []
    @emailarray.map do |addresses|
      if newarray.include?(addresses)
        @newarray << addresses
      end
    end
    @newarray

  end

  def parse
    @newarray
  end

end
