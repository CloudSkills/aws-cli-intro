<#
s3 is Amazon's simple storage service. 
Reference: S3 https://docs.aws.amazon.com/cli/latest/reference/s3/index.html
S3API https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html
S3 Website Endpoints
https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteEndpoints.html
#>
exit #PREVENT F5

aws s3 help
aws s3 ls
aws s3 website help

#make a bucket for a website
aws s3 mb s3://aws --region us-east-2 #fails, duplicate name
aws s3 mb s3://cs2021 --region us-east-2 
#aws s3 mb s3://cs202101 --region us-east-2 --tags Key=Env,Value=Dev Key=Purpose,Value=Demonstrate static websites

#list my aws s3 buckets
aws s3 ls

#try to access bucket over https, public access denied by default 
Invoke-WebRequest http://cs2021.s3.amazonaws.com/
#website not configured yet
Invoke-WebRequest http://cs2021.s3-website.us-east-2.amazonaws.com/

#upload a web page
aws s3 cp ./resources/index.html s3://cs2021
#optional, upload media file
aws s3 cp ./resources/hello.mp3 s3://cs2021
aws s3 ls s3://cs2021


#try to access html file, public access denied by default 
Invoke-WebRequest http://cs2021.s3.amazonaws.com/index.html


#enable website
aws s3 website help
aws s3 website s3://cs2021 --index-document index.html
#verify website enabled
aws s3api get-bucket-website --bucket cs2021 

#grant rights
#refer https://stackoverflow.com/questions/41325740/aws-s3-permissions-error-with-put-bucket-acl
#check permissions
aws s3api list-buckets --region us-east-2 

#see default s3 permissions
aws s3api get-bucket-acl --bucket cs2021
aws s3api get-object-acl --bucket cs2021 --key index.html

#grant public read access
aws s3api put-bucket-acl --bucket cs2021 --acl public-read 
aws s3api put-object-acl --bucket cs2021 --key index.html --acl public-read 
#optional, read access for mp3
aws s3api put-object-acl --bucket cs2021 --key hello.mp3 --acl public-read 

#see json skeleton, useful to customize permissions
aws s3api put-bucket-acl --bucket cs2021 --generate-cli-skeleton 

#see updated s3 permissions
aws s3api get-bucket-acl --bucket cs2021
aws s3api get-object-acl --bucket cs2021 --key index.html


#test it
#bucket url is not same as the website url
#refer to https://stackoverflow.com/a/24377823/2934158
#bucket url
Invoke-WebRequest http://cs2021.s3.amazonaws.com
#website url to html file
Invoke-WebRequest http://cs2021.s3-website.us-east-2.amazonaws.com/
#website url to default document
Invoke-WebRequest http://cs2021.s3-website.us-east-2.amazonaws.com/index.html



#S3 cleanup
<#
aws s3 rb s3://cs2021 --force
#>