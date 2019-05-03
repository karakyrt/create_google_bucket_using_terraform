provider "google" {
  credentials   = "${file("${var.cpath}")}"
  project       = "${var.project}"
  region        = "${var.region}"
}

resource "google_storage_bucket" "COLDLINE" {
  name   = "kran"
  storage_class = "COLDLINE" 
  location = "asia-northeast1"
}

resource "google_storage_bucket_object" "text" {
  name = "lexus"
  content = "hi people"
  bucket  = "${google_storage_bucket.COLDLINE.name}"

}

