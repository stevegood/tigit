package auth

class UserController {

    def grailsApplication

    def register( ) {
        // register a new user account
        def userInstance = new User( params )
        switch ( request.method ) {
            case 'GET':
                [userInstance: userInstance]
                break
            case 'POST':
                if ( params.password != params.password2 ) {
                    flash.message = message( code: 'passwords.do.not.match', default: 'Passwords do not match' )
                    flash.alertType = 'error'
                    render view: 'register', model: [ userInstance: userInstance, passwordsDontMatch: true ]
                    return
                }

                // enable the account if verification is NOT required
                userInstance.enabled = grailsApplication.config.auth?.require?.verification != true

                if ( !userInstance.save() ) {
                    render view: 'register', model: [ userInstance: userInstance ]
                    return
                }

                flash.message = message( code: 'account.registered', default: '{0}, your account has been created!', args: [ userInstance.firstName ] )
                redirect uri: '/'
                break
        }
    }

    def profile( ) {
        // show the current user's profile if no profile was passed
    }

}
