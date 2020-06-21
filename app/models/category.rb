class Category < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :parent, class_name: "Category", foreign_key: "category_id", optional: true
  has_many :children, class_name: "Category", dependent: :destroy

  validates :name, presence: true, uniqueness: {case_sensitive: false}


  def all_children
    children_to_see = children.to_a
    childs_to_return = []
      while children_to_see.present?
        current_node = children_to_see.shift
        childs_to_return << current_node.name
        children_to_see.concat(current_node.children)
      end
      childs_to_return
  end

  # def parents(category = self)
  #   @result ||= []
  #   return @result if category.parent.nil?
  #
  #   @result << parent
  #   parents(category.parent)
  # end

  def parents(category = self)
    result = []
     while category.parent.present?
       result << category.parent
       category = category.parent
     end
    return result
  end
end
