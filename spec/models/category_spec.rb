require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'On Creation' do
    it "cannot have two parents" do
      parent = Category.create(name: 'potato')
      parent_2 = Category.create(name: 'big potato')
      category = Category.create(name: 'sub potato', parent: parent)
      category_2 = Category.create(name: 'sub potato', parent: parent_2)
      expect(category_2).to_not be_valid
    end
  end
  
end
