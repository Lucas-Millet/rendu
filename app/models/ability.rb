class Ability
  include CanCan::Ability

  def initialize(user)

     user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud 

    can :read, Article
    cannot :create, Article


    if user.id
    #peut crud ses propres articles, mais peut seulement lire les autres
     can [:crud, :me], Article, {user_id: user.id}
     
 end


 end
end
