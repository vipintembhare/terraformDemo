terraform {
  backend "gcs" {
    bucket = "conference-console-loadbalancer-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
