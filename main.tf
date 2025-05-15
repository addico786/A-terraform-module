module "test" {
    source          = "../tf-custom-module"
    environment     = "test"
    instance_type   = "t3.micro"
    instance_count  = 2
    instance_volume = 10
    ami             = "ami-0c1ac8a41498c1a9c"
    key_path        = "kurunin4-key-15-5-2025.pub"
}

module "deployed_production" {
    source          = "../tf-custom-module"
    environment     = "prd"
    instance_type   = "t3.micro"
    instance_count  = 2
    instance_volume = 10
    ami             = "ami-0c1ac8a41498c1a9c"
    key_path        = "kurunin4-key-15-5-2025.pub"
}

