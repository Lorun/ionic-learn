include Nanoc::Helpers::Rendering

def formulas
  @items.select { |item| item[:kind] == "formula" }
end

def related_formulas(category = @item[:main_category])
  formulas.select { |item| item[:main_category] == category and item != @item }
end

def formula_categories
  formulas.map { |item| item[:main_category] }.uniq
end

def category_path(category)
  @items.select { |item| item[:kind] == "category_list" && item[:category] == category}[0].path
end

def videos
  @items.select { |item| item[:kind] == "video" }
end

def related_videos(difficulty = @item[:difficulty])
  videos.select { |item| item[:difficulty] == difficulty and item != @item }
end

def video_difficulties
  videos.map { |item| item[:difficulty] }.uniq
end

def difficulty_path(difficulty)
  @items.select { |item| item[:kind] == "difficulty_list" && item[:difficulty] == difficulty}[0].path
end