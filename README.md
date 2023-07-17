# ft_server
This repository contains scripts and configuration files for setting up a web server environment with Nginx, SSL, MariaDB, PHP, WordPress, and phpMyAdmin.
## Prerequisites

Before getting started, ensure that you have the following dependencies installed:

- `docker`

## Installation and Setup

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/anbarbie/ft_server.git
   cd ft_server
   ```
2. Setup
   ```bash
   docker build -t ft_server .
   docker run -p 80:80 -p 443:443 -d ft_server
   ```
