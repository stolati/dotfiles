#!/usr/bin/env zsh



export AWS_HOME=/cygdrive/c/Users/Mickael.Kerbrat/.aws
aws_ssh(){
	typeset key_file='/cygdrive/d/work/Fivestars/credentials/aws_prod/mothership.pem'
	ssh -i "$key_file" -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@"$1"
}

aws_copy_to(){
	typeset key_file='/cygdrive/d/work/Fivestars/credentials/aws_prod/mothership.pem'
	typeset file="$1" host="$2"
	typeset file_name="$(basename "$file")"
	typeset file_path="/home/ubuntu/$file_name"
	scp -i "$key_file" -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$file" ubuntu@"$host":"$file_path"
	echo "Your file is in $file_path"
}


