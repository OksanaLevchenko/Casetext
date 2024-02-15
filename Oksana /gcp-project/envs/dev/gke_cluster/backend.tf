terraform {
  backend "gcs" {
    bucket = "interview-bucket-oks1"
    prefix = "terraform/"
  }
}
