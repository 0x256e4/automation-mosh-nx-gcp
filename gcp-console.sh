#!/usr/bin/env bash

gcloud config get-value project > project;
gcloud projects list \
--filter="$(gcloud config get-value project)" \
--format="value(PROJECT_NUMBER)" > projectnumber;

project=$(cat project);
projectNumber=$(cat projectnumber);

gcloud compute firewall-rules create mosh --allow udp:60000-61000;
gcloud compute firewall-rules create nx --allow tcp:4000-4500;

gcloud compute instances create leet-sec --project=${project} --zone=asia-southeast2-a --machine-type=n2-custom-6-49152 --network-interface=network-tier=PREMIUM,subnet=default --maintenance-policy=MIGRATE --metadata=startup-script=\ \#\!\ /bin/bash$'\n'\ apt\ update$'\n'\ apt\ -y\ install\ mosh\ vim\ git\ sed\ zsh --service-account=${projectNumber}-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server,mosh,nx --create-disk=auto-delete=yes,boot=yes,device-name=loliganas,image=projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20211214,mode=rw,size=500,type=projects/$project/zones/asia-southeast2-a/diskTypes/pd-extreme --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any --enable-nested-virtualization;
rm project projectnumber;