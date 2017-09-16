# IBM Containers Cluster

Sample template to provision an armada cluster of _N worker nodes_.

## Variables

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|bluemix_api_key|Your Bluemix API Key||
|org|Bluemix org||
|space|Bluemix space|dev|
|region|Bluemix region|us-south|
|datacenter|datacenter for the cluster - you can get the list with by running _`bluemix cs locations`_|dal12|
|machine_type|defines the CPU cores, memory, network and speed - you can get a list for a given location by running _`bluemix cs machine-types LOCATION`_|u1c.2x4|
|subnet_id|portable subnet to use for cluster||
|public_vlan_id|||
|private_vlan_id|||
|workers_map|list of worker names and actions for the cluster in HCL|[ {name = "worker1", action = "add"}, {name = "worker2", action = "add"} ]

_NOTE: currently the `workers_list` variable is ignored and a 2-worker cluster is always created. You can fork the github repo associated with this template in order to modify this (or wait for our next version)_

