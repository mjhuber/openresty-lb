# Cloudrun Load Balancer
This is a simple passthrough load balancer.  It will balance traffic to two different IPs.

## Environment Variables
The following variables are required.  They can be changed by sending a `HUP` to the nginx process.

| Variable              | Description                          | 
|-----------------------|--------------------------------------|
| `DD_PROD`             | IP address of upstream IP #1         |
| `DD_PROD_PORT`        | Port to use with DD_PROD             |
| `DD_PROD_WEIGHT`      | Weight to apply to DD_PROD.          |
| `DD_CANDIDATE`        | IP address of upstream IP #2         |
| `DD_CANDIDATE_PORT`   | Port to use with DD_CANDIDATE        |
| `DD_CANDIDATE_WEIGHT` | Weight to apply to DD_CANDIDATE      |
