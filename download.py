from boto3.s3.transfer import S3Transfer
import boto3
import glob


def download_from_aws(local_file, bucket, s3_file):            
    client = boto3.client('s3', aws_access_key_id='##',aws_secret_access_key='##')
    transfer = S3Transfer(client)
    transfer.download_file(bucket, local_file, s3_file)
    
download_from_aws('inventory-2021-05-16.bak', 'newki-backup', 'inventory-2021-05-16.bak')
download_from_aws('website-2021-05-16.bak', 'newki-backup', 'website-2021-05-16.bak')
