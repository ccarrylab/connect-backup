#The contents of this file is used only for building and deploying a lambda via SAM.

#Some versioning vars, probably best not to fiddle with these
VERSION=$(shell git describe --abbrev=0 --exact-match --tags)
BRANCH=$(shell git branch | grep \* | cut -d ' ' -f2)
DATE=$(shell date)
COMMIT=$(shell git rev-parse HEAD)

#The name for the CFN stack to be deployed
STACK-NAME=connect-backup-lambda
#The aws profile to build your SAM package
BUILD-PROFILE=default
#The aws profile to deploy the sam package.  This can be different to the BUILD-PROFILE if you want
DEPLOY-PROFILE=sethkor
EXE-NAME=connect-backup-lambda-test
LAMBDA-NAME=ConnectBackup
REGION=us-west-2
#This is your existing AWS sam deployment bucket.  It is not created as part of this project and I have assumed it
#already exists for you.  For more info, see the AWS SAM documentation
SAM-BUCKET=gts
#This is the bucket that will be created for your backups
BACKUP-BUCKET=sethkor-connect-backup-test
#This is your AWS Connect instance id.  You can get this from the console
CONNECT-INSTANCE-ID=02af995c-9efc-41f6-8b20-0effe08f2b5d
