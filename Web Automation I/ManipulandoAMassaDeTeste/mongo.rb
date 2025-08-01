require "mongo"

class MongoDB
    def remove_user(email)
        client = Mongo::Client.new(['rocklov-db:27017'], database: 'rocklov')
        users = client[:users]
        users.delete_many({email: email})
    end
end
