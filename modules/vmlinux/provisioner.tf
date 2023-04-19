resource "null_resource" "ansible_provisioner" {
  depends_on = [azurerm_linux_virtual_machine.vm]

  provisioner "local-exec" {
    command = "ansible-playbook -i ./hosts ./groupX-playbook.yaml"
  }
}

