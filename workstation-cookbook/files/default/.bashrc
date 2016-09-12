function kbs() {
 knife node delete -y $2
 knife client delete -y $2
 knife bootstrap $1  -V -u raymond -k ~/.chef/raymond_new.pem  --sudo -x ubuntu  -N $2 --secret-file ~/.chef/encrypted_data_bag_secret --run-list "$3" -E $4 --bootstrap-version 12.5.1
}
