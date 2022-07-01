terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.23.0"
    }
  }
}


resource "google_storage_bucket" "exam-tesst-bucket-9091" {

  name                        = "exam-tesst-bucket-9091"
  storage_class               = "STANDARD"
  location                    = "US-CENTRAL1"
  uniform_bucket_level_access = true
  labels = {
    "env" = "tf_env"
    "dep" = "complience"
  }

lifecycle_rule {
 condition {
  age = 5
  }
 action {
  type = "SetStorageClass"
  storage_class = "ARCHIVE"
}
}


  retention_policy {
    is_locked        = false
    retention_period = 864000
  }

 

}

resource "google_storage_bucket_object" "text" {
  name   = "gcp_logo"
  bucket = google_storage_bucket.exam-tesst-bucket-9091.id
  source = "butterfly.jpg"
}