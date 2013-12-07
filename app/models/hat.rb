# 1.  Choose a name from the list.
# 2.  Filter the matching name out of the list.
# 3.  Assign a random Santa from the list in step 2, to the name in step 1.
# 4.  Repeat until all names are assigned...


class Hat

  def initialize
    @members = []
    @validPool = []
  end

  #put a new member into the hat
  def put(member)
    @members << member
    @validPool << member
  end

  #match every member to a Secret Santa
  def match

    Match.delete_all

    @members.each do |member|

      # @validPool = @members.dup
      #@validPool.delete(member)

      vp_size = @validPool.size
      secret_santa = @validPool.at(rand(vp_size)) #until (secret_santa.id != member.id)
      while (secret_santa.id == member.id)
        secret_santa = @validPool.at(rand(vp_size)) #until (secret_santa.id != member.id)
      end

      @validPool.delete(secret_santa)

      # key   = "#{secret_santa.first_name} #{secret_santa.last_name}"
      # value = "#{member.first_name} #{member.last_name}"

      Match.create(secret_santa_id: secret_santa.id, member_id: member.id)

    end
  end

end