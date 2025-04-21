#!/bin/bash
sudo docker run --rm \
    -v /root/prowler_csv/:/home/prowler/output \
    --name prowler-dashboardscan toniblyx/prowler:latest aws \
    -f us-east-1 \
    -M csv \
    --verbose \
    --compliance aws_foundational_security_best_practices_aws aws_well_architected_framework_security_pillar_aws cis_3.0_aws iso27001_2013_aws \
    --severities medium high critical
 
# Read the file into an array
#mapfile -t services < aws_services.txt
 
# Read each line from services file and execute prowler
#for service in "${services[@]}"; do
#       echo Running $base_command "$service"
#       $base_command "$service"
#done
