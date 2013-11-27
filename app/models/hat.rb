# 1.  Choose a name from the list.
# 2.  Filter the matching name out of the list.
# 3.  Assign a random Santa from the list in step 2, to the name in step 1.
# 4.  Repeat until all names are assigned...
class Hat

  #represents a member of the Gift Exchange
  # Member = Struct.new(:firstName, :lastName, :email, :clan)

  def initialize
    @members = []
    @pool = []
  end

  #put a new member into the hat
  def put(member)
    # member = Member.new(firstName, lastName, email)
    @members << member
    @pool << member
  end

  #match every member to a Secret Santa
  def match
    match_list = []
    @members.each do |santa|
    santa_clan = draw(santa)
    match_list << {santa => santa_clan}
    end
    return match_list
  end

  #draw a person out of the hat for a Secret Santa
  def draw(santa)
    validPool = filter(santa)
    person = validPool.at(rand(validPool.size))
    @pool.delete(person)
  end

  #filter out people who are in the same clan as Secret Santa
  def filter(santa)
    @pool.select do |member|
      member.last_name != santa.last_name
    end
  end

  #notify each Secret Santa which members are on their list
  # def notify(santa)
  #   if santa.clan != nil
  #     msg = "#{santa.clan.firstName} #{santa.clan.lastName} is on " +
  #           "#{santa.firstName} #{santa.lastName}'s list." +

  #   else
  #     msg = "#{santa.firstName} #{santa.lastName}'s list is empty!"
  #   end

  # end
end