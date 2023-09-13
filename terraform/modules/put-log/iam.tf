/**
 * ログ送信アカウント側： バケットにログを保存するためのIAMポリシー
 */
resource "aws_iam_policy" "s3_access_for_cross_account" {
  name        = "${var.environment}-${var.project}-put-log-policy"
  description = "Policy access to shared log bucket"
  policy      = templatefile("${path.module}/templates/iam-policy-put-log.json", { log_archive_account_id = var.log_archive_account_id, log_backet_name = var.shared_log_backet })
}
