#
# kms
#
resource "aws_kms_key" "project_shared" {}

resource "aws_kms_alias" "project_shared" {
  name          = "alias/${var.environment}-${var.project}"
  target_key_id = aws_kms_key.project_shared.key_id
}
