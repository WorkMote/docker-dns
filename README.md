# docker-dns ![MicroBadger Size](https://img.shields.io/microbadger/image-size/workmote/dns.svg)

DNS in a Docker container, to serve custom internal naming plus custom forwarding.

## Description

This image provides a DNS solution to be implemented in any system to serve several purposes:

- Provide a local DNS so internal name queries can be offered.
- Forwarding to custom external DNS, in case external name resolution is required.
- Automatic name setup for containers running, so they can be accessed by name instead of ip