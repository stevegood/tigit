package auth

import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUser
import org.springframework.security.core.GrantedAuthority

/**
 * Created with IntelliJ IDEA.
 * User: steve
 * Date: 12/16/12
 * Time: 8:42 PM
 * To change this template use File | Settings | File Templates.
 */
class CustomUserDetails extends GrailsUser {

    final String firstName
    final String lastName
    final String email

    CustomUserDetails( String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired,
                       boolean accountNonLocked, Collection<GrantedAuthority> authorities, long id, String firstName, String lastName, String email ) {
        super( username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities, id )

        this.firstName = firstName
        this.lastName = lastName
        this.email = email
    }

}
