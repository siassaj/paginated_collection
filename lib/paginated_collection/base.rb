module PaginatedCollection
  class Base < Array

    attr_accessor :pagination

    def initialize *members, pagination: {}
      p = pagination.symbolize_keys
      @pagination = Pagination.new(p[:current_page],
                                   p[:total_pages],
                                   p[:per_page])

      super members
    end

    def self.build_with(elems, pagination: {}, &block)
      members = elems.map { |e| block.call(e) }
      self.new(members, pagination)
    end
  end
end
