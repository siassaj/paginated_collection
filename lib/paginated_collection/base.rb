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
  end
end
