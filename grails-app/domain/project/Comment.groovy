package project

import auth.User

class Comment {

    Date dateCreated
    Date lastUpdated

    User author
    String text

    static hasMany = [ comments: Comment ]

    static constraints = {
        text blank: false
    }

    static mapping = {
        text type: 'text'
    }
}
