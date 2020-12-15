# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :addresses
    
    def initialize(addresses)
        @addresses = addresses
    end

    def parse
        #address_array = @addresses.split(", ")
        #address_array = address_array[0].split(" ")

        address_array = @addresses.split(/[\s,]+/)
        address_array = address_array.uniq
    end
end