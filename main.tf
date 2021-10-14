module "slackoapp" {
    # module source
    source = "./modules/slacko-app"
    # Amazon VPC ID
    vpc_id = "vpc-xxxxxxxxxxxxxxxxxx"
    # Amazon subnet ip range
    subnet_cidr = "10.0.102.0/24"
    # SSH Key to access machines
    ssh_key = "ssh-rsa = slacko"
    # Slackoapp machine name
    app_name = "slacko-app"
    # Resource tags
    app_tags ={
        env = "production"
        project = "slacko-app"
        customer = "iaac0506.com.br"
    }
    # App Instance type
    app_instance = "t2.micro"
    # DB Instance type
    db_instance = "t2.micro"
}

output "slacko-ip" {
    value = module.slackoapp.slacko-app
}
