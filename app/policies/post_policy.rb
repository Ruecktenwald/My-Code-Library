class PostPolicy < ApplicationPolicy

  def update?
    record.user_id == user.id || admin?   
  end


  private

  def admin?
    admin_types.include?(user.type)
  end

 
end