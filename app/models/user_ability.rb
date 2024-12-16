class UserAbility
  include CanCan::Ability

  def initialize(user)
    cannot :manage, :all
    can :read, [User]
    can :create, [Contact]
    if user
      can :manage, [User, Ad, Review, UserSimulationMaterial, Request, Question, Answer, Blog, Order, AcceptedBidding]
      can :read, [Bidding]
      can :create, [Company, UserPointLog]
      unless user.companies_count.zero?
        can :manage, [Product, Bidding, Company]
      end
    end
  end
end
