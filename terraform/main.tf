terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38"
    }
  }
}

provider "kubernetes" {
  config_path = "C:/Users/Sakshi/.kube/config"
}

resource "kubernetes_namespace_v1" "devopsx" {
  metadata {
    name = "devopsx"
  }
}

resource "kubernetes_deployment_v1" "task_manager" {
  metadata {
    name      = "devopsx-task-manager"
    namespace = kubernetes_namespace_v1.devopsx.metadata[0].name
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "devopsx-task-manager"
      }
    }

    template {
      metadata {
        labels = {
          app = "devopsx-task-manager"
        }
      }

      spec {
        container {
          name              = "devopsx-task-manager"
          image             = "devopsx-task-manager:34"
          image_pull_policy = "IfNotPresent"

          port {
            container_port = 8080
          }

          readiness_probe {
            http_get {
              path = "/actuator/health/readiness"
              port = 8080
            }

            initial_delay_seconds = 20
            period_seconds        = 10
          }

          liveness_probe {
            http_get {
              path = "/actuator/health/liveness"
              port = 8080
            }

            initial_delay_seconds = 30
            period_seconds        = 15
          }
        }
      }
    }
  }
}
resource "kubernetes_service_v1" "task_manager" {
  metadata {
    name      = "devopsx-task-manager-service"
    namespace = kubernetes_namespace_v1.devopsx.metadata[0].name
  }

  spec {
    selector = {
      app = "devopsx-task-manager"
    }

    port {
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}