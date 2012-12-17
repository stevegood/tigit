import grails.util.Environment
import auth.UserRole
import auth.Role
import auth.User

class BootStrap {

    def init = { servletContext ->
        Role userRole = Role.findOrCreateWhere(authority: 'ROLE_USER').save()
        Role adminRole = Role.findOrCreateWhere(authority: 'ROLE_ADMIN').save()

        if ( Environment.currentEnvironment == Environment.DEVELOPMENT ) {
            User adminUser = new User( firstName: 'Admin', lastName: 'User', email: 'admin@tigitapp.com', username: 'admin', password: 'password', enabled: true).save()
            UserRole.create( adminUser, userRole )
            UserRole.create( adminUser, adminRole )
        }
    }
    def destroy = {
    }
}
