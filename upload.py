from boto3.s3.transfer import S3Transfer
import boto3
import glob
import os

def upload_to_aws(local_file, bucket, s3_file):            
    client = boto3.client('s3', aws_access_key_id='###',aws_secret_access_key='###')
    transfer = S3Transfer(client)
    transfer.upload_file(local_file, bucket, local_file)
    
files = glob.glob("*.bak")
for file in files:
    print(file)
    uploaded = upload_to_aws(file, 'newki-backup', file)
    os.remove(file) 
