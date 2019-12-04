package main

import (
	"context"
	"flag"
	"log"
	"time"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

func main() {

	var mongouri string
	flag.StringVar(&mongouri, "mongo.uri", "mongodb://mongo:27017", "mongodb uri")
	flag.Parse()

	ctx, _ := context.WithTimeout(context.Background(), 10*time.Second)
	client, err := mongo.Connect(ctx, options.Client().ApplyURI(mongouri))
	if err != nil {
		panic(err)
	}
	for {
		result, err := client.Database("umbapi").Collection("delete_me").InsertOne(context.Background(), bson.D{})
		log.Println(result, err)
		time.Sleep(3 * time.Second)
	}
}
