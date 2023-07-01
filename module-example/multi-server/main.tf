provider "aws" {
  region = "us-east-2"
}
module "server_1" {
  name = "server-1"
  source = "../server"
}
module "server_2" {
  name = "server-2"
  source = "../server"
}
module "server_3" {
  name = "server-3"
  source = "../server"
}