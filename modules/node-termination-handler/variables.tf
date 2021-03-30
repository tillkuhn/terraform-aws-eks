variable "enabled" {
  description = "A conditional indicator to enable cluster-autoscale"
  type        = bool
  default     = true
}

### helm
variable "helm" {
  description = "The helm release configuration"
  default = {
    name            = "aws-node-termination-handler"
    repository      = "https://aws.github.io/eks-charts"
    chart           = "aws-node-termination-handler"
    namespace       = "kube-system"
    serviceaccount  = "aws-node-termination-handler"
    cleanup_on_fail = true
  }
}

### security/policy
variable "oidc" {
  description = "The Open ID Connect properties"
  type        = map
}

### description
variable "cluster_name" {
  description = "The kubernetes cluster name"
  type        = string
}

variable "petname" {
  description = "An indicator whether to append a random identifier to the end of the name to avoid duplication"
  type        = bool
  default     = true
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}