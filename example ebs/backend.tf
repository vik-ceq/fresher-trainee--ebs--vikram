terraform {
  backend "s3" {
    bucket = "ceq-assignment" // bucket name
    key    = "ec2.tfstate"  // bucket object
    region = "us-east-1"
    dynamodb_table = "ceq-assignment-table"  // for locking
  }
}

// terraform init -reconfigure -backend-config="bucket=BUCKET_NAME" -backend-config="key=KEY_NAME" -backend-config="dynamodb_table=DYNAMODB_TABLE_NAME"