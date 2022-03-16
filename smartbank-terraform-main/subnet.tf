resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = "us-west-2a"
  #map_public_ip_on_launch = true

  tags = {
    "Name" = "${local.Name}-public-subnet"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-west-2c"
  #map_public_ip_on_launch = true

  tags = {
    "Name" = "${local.Name}-public-subnet2"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = "us-west-2a"
  #map_public_ip_on_launch = false

  tags = {
    "Name" = "${local.Name}-private-subnet"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = "us-west-2c"
  #map_public_ip_on_launch = false

  tags = {
    "Name" = "${local.Name}-private-subnet2"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

resource "aws_subnet" "private-db" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.private_subnet_db_cidr
  availability_zone = "us-west-2a"
  #map_public_ip_on_launch = false

  tags = {
    "Name" = "${local.Name}-private-db-subnet"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

resource "aws_subnet" "private-db2" {
  vpc_id            = aws_vpc.jupiter_vpc.id
  cidr_block        = var.private_subnet2_db_cidr
  availability_zone = "us-west-2c"
  #map_public_ip_on_launch = false

  tags = {
    "Name" = "${local.Name}-private-db-subnet2"
    #"market" = local.market
    #"product" = local.product
    #"application" = local.application
    #"environment" = local.environment
  }
}

