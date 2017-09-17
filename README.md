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
|cluster_name|base name for the cluster|kubecluster|
|num_workers|how many worker nodes in the cluster|2|

_NOTE: currently the `num_workers` variable has to be a value between 1 and 10. Also, all worker nodes in the cluster will have the name 'worker-N'. At this time it is not possible to change the base name of worker nodes within the cluster with this template_

