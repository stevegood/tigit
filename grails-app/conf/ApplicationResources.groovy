modules = {
    application {
        resource url: 'js/application.js'
    }

    bootstrap {
        dependsOn 'jquery'
        resource url: 'css/bootstrap.css'
    }

    bootstrap_affix {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-affix.js'
    }

    bootstrap_alert {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-alert.js'
    }

    bootstrap_button {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-button.js'
    }

    bootstrap_carousel {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-carousel.js'
    }

    bootstrap_collapse {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-collapse.js'
    }

    bootstrap_dropdown {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-dropdown.js'
    }

    bootstrap_modal {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-modal.js'
    }

    bootstrap_popover {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-popover.js'
    }

    bootstrap_scrollspy {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-scrollspy.js'
    }

    bootstrap_tab {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-tab.js'
    }

    bootstrap_tooltip {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-tooltip.js'
    }

    bootstrap_transition {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-transition.js'
    }

    bootstrap_typeahead {
        dependsOn 'bootstrap'
        resource url: 'js/bootstrap-typeahead.js'
    }

}
