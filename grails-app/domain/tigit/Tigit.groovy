package tigit

class Tigit implements Serializable {

    static int PENDING = 0, ACTIVE = 1, COMPLETE = 2

    Date dateCreated
    Date lastUpdated

    String title
    String description
    long points = 10
    int status = Tigit.PENDING

    static constraints = {
        title blank: false
        description blank: false
        points range: 10..100
    }

    static mapping = {
        description type: 'text'
    }
}
