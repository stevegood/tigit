package project

import auth.User
import tigit.Tigit

class Project {

    Date dateCreated
    Date lastUpdated

    User owner
    String name
    String uri = new Date().time.toString()
    String url
    String description

    static hasMany = [ users: User, tigits: Tigit ]

    static constraints = {
        name blank: false
        url nullable: true, blank: true, url: true
        description nullable: true, blank: true
    }

    static mapping = {
        description type: 'text'
    }

    def beforeInsert() {
        uri = nameToURI()
    }

    def beforeUpdate() {
        uri = nameToURI()
    }

    String nameToURI(){
        def str = name.replaceAll("'",'').replaceAll(/[^a-z-A-Z0-9]/, '_').replaceAll(/(_)\1+/,'_').toLowerCase() // use some awesome regex to convert this to a uri
        if (str[-1] == "_"){
            str = str.substring(0, str.length() - 1)
        }
        def afterUri = ""
        def existingProject = Project.findByUri(str)
        if (existingProject?.id != this.id && existingProject?.uri == this.uri){
            afterUri = "_" + new Date().format('MMddyyyyhhmmss').toString()
        }

        "${str}${afterUri}"
    }
}
