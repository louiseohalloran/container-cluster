variable "workers" {
  type = "list",
  default = [
    [],
    [ {name = "worker-1"} ],
    [ {name = "worker-1"}, {name = "worker-2"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"}, {name = "worker-9"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"}, {name = "worker-9"}, {name = "worker-10"} ]
  ]
}
variable "num_workers" { default = 2 }
