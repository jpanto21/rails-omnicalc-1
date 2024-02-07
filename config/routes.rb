Rails.application.routes.draw do
  get("/", controller:"form", action:"square")

  get("/square/new", controller:"form", action:"square")

  get("/square/results", controller:"calculations", action:"square")

  get("/square_root/new", controller:"form", action:"square_root")

  get("/square_root/results", controller:"calculations", action:"square_root")

  get("/payment/new", controller:"form", action:"payment")

  get("/payment/results", controller:"calculations", action:"payment")

  get("/random/new", controller:"form", action:"random")

  get("/random/results", controller:"calculations", action:"random")
end
