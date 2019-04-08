# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails) 
    @emails = emails # stores all of the emails into the emails class
  end

  def parse
    split_email = emails.split.collect {|address| address.split(",")} #
    split_email.flatten.uniq
  end

end