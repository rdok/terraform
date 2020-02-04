#!/bin/bash

terraform () {
  docker-compose exec terraform /bin/terraform "$@"
}
