variable "dublin_ami" {
  type    = string
  default = "ami-03cc8375791cb8bcf"
}

# Attempt at putting my SSH key onto new boxes
variable "ssh_pub_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4auh786CYEs2u6WuJN8ZMBhylonXNHGCoArf/H355P16eDjOktav051BwqaxexO2TGutRXQlOlxaROoeFpCdTCPkryghB8DTC04ynNqXJey1xPga8Klizxmukrxk75HS9GwBFDFrbmy3wKxHQi8v6XZQGBREDGJYVq0t712kbUOzHIthEzj+/0E3WeUU5qWMuKdEpIg5Mi773UD36TByBGY44g3MpXgxThDHLIsfTrN8y0TFZkH9XnCrC6RoZR8jYs7Yw+s1AB6rHwsaj6FP96MNDatd/Kj1HW37YrSCNBySTt4aWfDr1RwbIeLW7q/j+qQItWKlSG7wk5tF6FRD5CABw4MCXx/9dK2MuVjemOQix3J5srs3mGQLsm5+KIeC4/Qh5oRI4unF4bUDoHiBldPyugWx4F56TROajBwafUSVmSrdYg5HU87ltM8SWeA8h5H67cUaC1Dkp6x3rGgfPZBLjaBPsXE+fWRFfv4psy/Vz5Z8LjMemRFX97ApWl0U= martyn@chiefwiggum"
}