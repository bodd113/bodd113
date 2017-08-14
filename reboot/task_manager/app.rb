
require_relative "repository"
require_relative "controller"
require_relative "router"
require "pry-byebug"


repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)

router.run
