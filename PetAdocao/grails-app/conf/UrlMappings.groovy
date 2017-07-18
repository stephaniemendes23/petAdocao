class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" ( controller:'Animal', action:'index' )
        "500"(view:'/error')
        "/login/index"(view: "login/index")
	}
}
