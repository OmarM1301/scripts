## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Azure ELK Stack Project diagram](./Images/Final-Elk-Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

[dvwa-playbook.yml](./DVWA/dvwa-playbook.yml)
[elk-playbook.yml](./ELK/elk-playbook.yml)
[filebeat-playbook.yml](./Filebeat/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting in-bound access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the JumpBox and system network.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| ELK      | Monitor  | 10.1.0.4   | Linux            |
| Web-1    | Webserver| 10.0.0.5   | Linux            |
| Web-2    | Webserver| 10.0.0.6   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 75.72.185.167

Machines within the network can only be accessed by SSH.
- The ELK server only allows my personal IP address to access the machine while using a specific port.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | 10.0.0.4             |
| Web-1    | No                  | 10.0.0.5             |
| Web-2    | No                  | 10.0.0.6             |
| ELK      | No                  | Personal IP          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows for complex tasks to be completed without the requirement of an any form of agents.

The playbook implements the following tasks:
- Install Docker
- Install python3-pip
- Install Docker python module pip
- Use systemctl to use more memory
- Download and launch docker container sebp/elk:761

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

['docker ps' output](./Images/docker-ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1, 10.0.0.5
- Web-2, 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors log files or locations specified by the user, collects log events, and forwards them to Elasticsearch or Logstash for indexing.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the configuration file to the Ansible container.
- Update the hosts file to include webservers and elk.

[hosts-file](./Images/hosts-file.png)

- Run the playbook, and navigate to the Kibana installation page to check that the installation worked as expected.

[kibana-success](./Images/kibana-successful.png)