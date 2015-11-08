# encoding: utf-8
class Book < ActiveRecord::Base
  has_many :buyings, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, '品目が存在します')
      return false
    end
  end
end
