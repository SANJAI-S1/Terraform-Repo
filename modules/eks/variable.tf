variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}


variable "cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  type        = string
}


variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}


variable "subnet_ids" {
  description = "Subnet IDs for EKS cluster and node groups"
  type        = list(string)
}


variable "node_groups" {
  description = "EKS managed node group configuration"

  type = map(object({
    instance_types = list(string)

    capacity_type = string

    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
}