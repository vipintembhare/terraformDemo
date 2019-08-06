
# Cloud Load Balancer Modules

<!-- NOTE: We use absolute linking here instead of relative linking, because the terraform registry does not support
           relative linking correctly.
-->

This repo contains modules to perform load balancing on [Google Cloud Platform (GCP)](https://cloud.google.com/) using [Google Cloud Load Balancing](https://cloud.google.com/load-balancing/).

## Quickstart

If you want to quickly spin up a HTTP Load Balancer with multiple backends, you can run the example that is in the root of this repo. Check out the [http-multi-backend example documentation]for instructions.

## What's in this repo

This repo has the following folder structure:

* [root] : The root folder contains an example of how to deploy a HTTP Load Balancer with multiple backends. See [http-multi-backend example documentation] for the documentation.

* [modules] : This folder contains the main implementation code for this Module.

  The primary modules are:

    * [http-load-balancer] is used to create an [HTTP(S) External Load Balancer](https://cloud.google.com/load-balancing/docs/https/) using [global forwarding rules](https://cloud.google.com/load-balancing/docs/https/global-forwarding-rules).
    * [internal-load-balancer]is used to create an [Internal TCP/UDP Load Balancer](https://cloud.google.com/load-balancing/docs/internal/) using [internal forwarding rules](https://cloud.google.com/load-balancing/docs/internal/#forwarding_rule).
                                                                                                                                           
* [examples] : This folder contains examples of how to use the submodules.

* [test] : Automated tests for the submodules and examples.



## What is Cloud Load Balancing?

[Cloud Load Balancing](https://cloud.google.com/load-balancing/) is a fully distributed, software-defined, managed service for all your traffic. It is not an instance or device based solution, so you won’t be locked into physical load balancing infrastructure or face the HA, scale and management challenges inherent in instance based LBs. Cloud Load Balancing features include:  

* **HTTP(S) Load Balancing:** HTTP(S) load balancing can balance HTTP and HTTPS traffic across multiple backend instances, across multiple regions.
* **Network TCP/UDP Load Balancing:** load balance external traffic.
* **Internal TCP/UDP Load Balancing:** load balance internal traffic.
* **Seamless Autoscaling:** Autoscaling helps your applications gracefully handle increases in traffic and reduces cost when the need for resources is lower.
* **Cloud CDN Integration:** Enabling [Cloud CDN](https://cloud.google.com/cdn/) for HTTP(S) Load Balancing for optimizing application delivery for your users.
* **Stackdriver Logging:** Stackdriver Logging for load balancing logs all the load balancing requests sent to your load balancer.

You can learn more about Cloud Load Balancing in [the official documentation](https://cloud.google.com/load-balancing/docs/).

## License

Please see [LICENSE.txt] for details on how the code in this repo is licensed.
