module "slackoapp" {
    # module source
    source = "./modules/slacko-app"
    # Amazon VPC ID
    vpc_id = "vpc-0237034540490b132"
    # Amazon subnet ip range
    subnet_cidr = "10.0.102.0/24"
    # SSH Key to access machines
    ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnQQQyA7nhlgcD02fLpZKyUO2TG4i8m7XiR7AZf5BUX+HyKAoh4Zll5HsPhtF2ZAEbHRLtdpOCrCAKqZnWVsQtZoqKUG1gF66ilBruR3MbSgOpNi+ejbsZNOotzKDrNCM6m6qgfGTQewV3Ey/7IJ0fP8vwOYivRXShMHatqTSAIAJRVYV5s6XJlcOlYjStJdsdwNHt14xpfeQWczSXV6McL8fy+nEJdS71bVhCusrBkaDP/YRmD2U/k1x2Izhy+EyoQQqtkSUHN2L5XIEXAbomvFydv9M1t/U8KJG39YZTcu9r4FgxLAa1NurlhQLyyys2wotmym1tXyZrSthcBeZLAuhFmTsWfo2m1YkFVr7fghzKqXQrqEpDDWDQdedARSJfI1+SRZ/DXvYoC42CcHwZtdYJKZXNVKr9edIw9YjEQ5sFgjkRK/aEEKsn64q/uFnP9dkuro4s2RvHyv6B6NNlSOSAZOrVP82b0ZIhRPBUv1qlVpRtZnMMpSLOSdf3hkU= slacko"
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