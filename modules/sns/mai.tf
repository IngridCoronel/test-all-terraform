resource "aws_sns_topic" "sns_topic" {
  name = "topic-test-full-tf"
}

resource "aws_sns_topic_subscription" "sns_subs_email" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = "ingridcoronelc@gmail.com"

  depends_on = [
    aws_sns_topic.sns_topic
  ]  
}

