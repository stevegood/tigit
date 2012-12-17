package project

import auth.User
import grails.plugins.springsecurity.Secured

class ProjectController {

    def springSecurityService

    @Secured(['ROLE_USER'])
    def create() {
        User user = springSecurityService.currentUser
        def projectInstance = new Project( params )
        projectInstance.owner = user

        switch ( request.method ) {
            case 'GET':
                [ projectInstance: projectInstance ]
                break
            case 'POST':
                if ( !projectInstance.save() ) {
                    render view: 'create', model: [ projectInstance: projectInstance ]
                    return
                }

                flash.message = message( code: 'default.created.message', args: [ message( code: 'project.label', default: 'Project' ), projectInstance.name ] )
                redirect action: 'show', params: [ username: user.username, uri: projectInstance.uri ]
                break
        }
    }

    def show() {
        Project projectInstance = Project.findByUriAndOwner( params.uri, User.findByUsername( params.username ) )
        [ projectInstance: projectInstance ]
    }

    def edit() {
        // edit a project
    }

}
