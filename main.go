package main

import (
	"github.com/metablink/stackly-api/app/api"
	"gopkg.in/gin-gonic/gin.v1"
)

func main() {
	// Creates a gin router with default middleware:
	// logger and recovery (crash-free) middleware
	router := gin.Default()
	router = api.InitRoutes(router)

	// By default it serves on :8080
	// PORT environment variable was defined.
	router.Run()
}
