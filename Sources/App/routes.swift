import Vapor
import  Leaf
/// Register your application's routes here.

public func routes(_ router: Router) throws {

    
    
    router.get { req -> Future<View> in // [1]
        let leaf = try req.make(LeafRenderer.self) // [2]
        let context = [String: String]() // [3]
            return leaf.render("main", context) // [4]
        }
    
    let authSession = Admin.authSessionsMiddleware()
      let authRouter = router.grouped(authSession)
    
    
    let journalRoutes = JournalRoutes()
    try router.register(collection: journalRoutes)
}

























/*public func routes(_ router: Router) throws {
 router.post("new") { req -> Future<HTTPStatus> in
        return try req.content.decode(Entry.self).map { entry in
            print("Appended a new entry: \(entry)")
            return HTTPStatus.ok
        }
    }
    router.get("get") { req -> Entry in
        return Entry(id: "999", title: "First Day", content: "Lots of fun")
    }
    
}
*/
