package project



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor( Project )
class ProjectTests {

    void testNameToURI( ) {
        Project project = new Project( name: 'This is a test' )
        assert project.nameToURI() == 'this_is_a_test'

        project.name = "It's official, this is another test!"
        assert project.nameToURI() == 'its_official_this_is_another_test'
    }
}
