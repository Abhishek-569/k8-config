terraform {
  required_providers {
    eksctl = {
      source = "mumoshu/eksctl"
      version = "0.16.2"
    }
  }
}
provider "eksctl" {}

resource "eksctl_cluster" "primary" {
  eksctl_bin = "C:/ProgramData/chocolatey/bin/eksctl.exe"
  name = "test-cluster"
  region = "ap-south-1"
  version= "1.22"
  spec = <<-EOS
  nodeGroups:
  - name: linux-nodes
    instanceType: t2.micro
    desiredCapacity: 2
  EOS
}