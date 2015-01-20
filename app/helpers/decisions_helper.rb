module DecisionsHelper
  def split_and_remove_leading_spaces(collection)
    @return = []
    collection.split(",").each do |i|
      @return << i.lstrip
    end
    @return
  end
end
