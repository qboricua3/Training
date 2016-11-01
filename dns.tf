
provider "dnsimple" {
    email = "not=a-real-email@fake.lol"
    token = "abcd1234"
}
	
resource "terraform.rocks" "*" {
   zone_id = "${myzone.primary.zone_id}"
   name = "anything"
   type = "A"
   ttl = "300"
   records = ["${aws_eip.lb.public_ip}"]
}

