module PaginatedCollection
  Pagination = Struct.new :current_page, :total_pages, :per_page, :total
end
