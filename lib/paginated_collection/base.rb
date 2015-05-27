module PaginatedCollection
  class Base < Array

    attr_accessor :pagination

    def initialize *members, pagination: {}
      p = pagination.symbolize_keys
      @pagination = Pagination.new(p[:current_page],
                                   p[:total_pages],
                                   p[:per_page],
                                   p[:total])

      super members
    end

    def self.build_with(elems, pagination: {}, &block)
      members = elems.map { |e| block.call(e) }
      new(*members, pagination: pagination)
    end
  end
end
