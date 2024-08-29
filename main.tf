terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region_map["dublin"]
}


# Start building - EC2
resource "aws_instance" "phobos" {
  # Ubuntu 24.04 on amd64 architecture
  ami           = var.ami_location["dublin"]
  instance_type = var.instance_type

  user_data = <<EOF
#!/bin/bash
echo
#echo "Copying the SSH Key to the server"
#echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4auh786CYEs2u6WuJN8ZMBhylonXNHGCoArf/H355P16eDjOktav051BwqaxexO2TGutRXQlOlxaROoeFpCdTCPkryghB8DTC04ynNqXJey1xPga8Klizxmukrxk75HS9GwBFDFrbmy3wKxHQi8v6XZQGBREDGJYVq0t712kbUOzHIthEzj+/0E3WeUU5qWMuKdEpIg5Mi773UD36TByBGY44g3MpXgxThDHLIsfTrN8y0TFZkH9XnCrC6RoZR8jYs7Yw+s1AB6rHwsaj6FP96MNDatd/Kj1HW37YrSCNBySTt4aWfDr1RwbIeLW7q/j+qQItWKlSG7wk5tF6FRD5CABw4MCXx/9dK2MuVjemOQix3J5srs3mGQLsm5+KIeC4/Qh5oRI4unF4bUDoHiBldPyugWx4F56TROajBwafUSVmSrdYg5HU87ltM8SWeA8h5H67cUaC1Dkp6x3rGgfPZBLjaBPsXE+fWRFfv4psy/Vz5Z8LjMemRFX97ApWl0U= martyn@chiefwiggum" >> /home/ubuntu/.ssh/authorized_keys

sudo apt update && sudo apt install nginx -y && sudo systemctl start nginx && sudo systemctl enable nginx \
&& sudo echo  '<!doctype html>
         <html lang="en"><h1>Home page!</h1></br>
         <h3>Hello from Phobos!</h3>
         <img src="https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2010/03/mars_moon_phobos/9916976-2-eng-GB/Mars_moon_Phobos_pillars.jpg"></img>
         </html>' | sudo tee /var/www/html/index.html
EOF

  tags = {
    Name = "Phobos"
  }
}

resource "aws_instance" "deimos" {
  # Ubuntu 24.04 on amd64 architecture
  ami           = var.ami_location["dublin"]
  instance_type = var.instance_type

  user_data = <<EOF
#!/bin/bash
echo "Copying the SSH Key to the server"
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4auh786CYEs2u6WuJN8ZMBhylonXNHGCoArf/H355P16eDjOktav051BwqaxexO2TGutRXQlOlxaROoeFpCdTCPkryghB8DTC04ynNqXJey1xPga8Klizxmukrxk75HS9GwBFDFrbmy3wKxHQi8v6XZQGBREDGJYVq0t712kbUOzHIthEzj+/0E3WeUU5qWMuKdEpIg5Mi773UD36TByBGY44g3MpXgxThDHLIsfTrN8y0TFZkH9XnCrC6RoZR8jYs7Yw+s1AB6rHwsaj6FP96MNDatd/Kj1HW37YrSCNBySTt4aWfDr1RwbIeLW7q/j+qQItWKlSG7wk5tF6FRD5CABw4MCXx/9dK2MuVjemOQix3J5srs3mGQLsm5+KIeC4/Qh5oRI4unF4bUDoHiBldPyugWx4F56TROajBwafUSVmSrdYg5HU87ltM8SWeA8h5H67cUaC1Dkp6x3rGgfPZBLjaBPsXE+fWRFfv4psy/Vz5Z8LjMemRFX97ApWl0U= martyn@chiefwiggum" >> /home/ubuntu/.ssh/authorized_keys
EOF

  tags = {
    Name = "Deimos"
  }
}