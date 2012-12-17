class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
        "/project/$username/$uri"(controller: 'project', action: 'show')
		"500"(view:'/error')
	}
}
