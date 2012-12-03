package tigit

import auth.User
import project.Project

class Tigit implements Serializable {

    static int PENDING = 0, ACTIVE = 1, COMPLETE = 2

    Date dateCreated
    Date lastUpdated

    String title
    String description
    long points = 10
    int status = Tigit.PENDING

    User author
    User assignedTo

    static belongsTo = [ project: Project ]

    static constraints = {
        title blank: false
        description blank: false
        points range: 10..100
    }

    static mapping = {
        description type: 'text'
    }
}
