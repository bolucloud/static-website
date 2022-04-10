resource "aws_route53_zone" "static-website" {
  name = var.domain_name
  tags = var.common_tags
}

resource "aws_route53_record" "root-a" {
  zone_id = aws_route53_zone.static-website.zone_id
  name    = var.domain_name
  type    = "A"

}

resource "aws_route53_record" "www-a" {
  zone_id = aws_route53_zone.static-website.zone_id
  name    = var.domain_name
  type    = "A"
}
