
output "cluster_role" {
  value = aws_iam_role.demo.arn
}

output "subnet_public_1" {
  value = aws_subnet.public-us-east-1a.id
}

output "subnet_public_2" {
  value = aws_subnet.public-us-east-1b.id
}

output "ack_config" {
  value = <<EOF
apiVersion: eks.services.k8s.aws/v1alpha1
kind: Cluster
metadata:
  name: ${local.name_prefix}-eks
spec:
  name: ${local.name_prefix}-eks
  roleARN: aws_iam_role.demo.arn
  resourcesVPCConfig:
    endpointPrivateAccess: true
    endpointPublicAccess: true
    subnetIDs:
    - aws_subnet.public-us-east-1a.id
    - aws_subnet.public-us-east-1b.id
EOF
}
