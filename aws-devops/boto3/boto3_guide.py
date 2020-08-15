import boto3
import uuid

def create_bucket_name(bucket_prefix):
	# the generated bucket name must have between 3 and 63 characters
	return ''.join([bucket_prefix, str(uuid.uuid4)])


# s3_resource.create_bucket(Bucket=YOUR_BUCKET_NME, CretaeBucketConfiguration={'LocationConstrain': })


def create_bucket(bucket_prefix, s3_connection):
	session = boto3.Session._session()
	current_region = session.current_region
	bucket_name = create_bucket_name(bucket_prefix)
	
