class CategoryPolicy < ApplicationPolicy

  def show?
    record.user_id == user.id || admin?  
  end
  
  def update?
    record.user_id == user.id || admin?   
  end

  def destroy?
    record.user_id == user.id || admin? 
  end

  private

  def admin?
    admin_types.include?(user.type)
  end 
end