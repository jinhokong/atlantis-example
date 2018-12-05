resource "null_resource" "example" {
}
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "GameScores"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

 
}
