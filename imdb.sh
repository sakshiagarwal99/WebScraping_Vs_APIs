#!/bin/bash

# This script retrieves movie data from the IMDb Website.
#
# The API key was generated through an external api OMDB API.
#
# The user must provide the title of the movie as the first argument to the script.
#
# The script prints the movie data to the console.

# Check if the IMDb API key is set.
if [ -z $OMDB_API_KEY ]; then
  echo "Please set the OMDB_API_KEY environment variable."
  exit 1
fi

# Check if the user provided a movie title.
if [ -z "$1" ]; then
  echo "Usage: $0 <movie-title>"
  exit 1
fi

# Convert the movie title to a format that the IMDb API can understand.
movie_title = $(echo "$1" | tr " " "+")

# The URL of the IMDb API endpoint.
api_endpoint="http://www.omdbapi.com/?t=${movie_title}&apikey=${OMDB_API_KEY}"

# Get the data from the IMDb API endpoint.
data=$(curl -s "$api_endpoint" rl -s)

# Check if the movie was found.
if [ "$data" = '{ "Response":"False","Error":"Movie not found!"}' ]; then
  echo "Movie is not found"
  exit 1
fi

# Use jq to extract the movie data from the JSON response.
title=$(echo "$data | jq -r ".Title")
year=$(echo "$data | jq -r ".Year")
genre=$(echo "$data | jq -r ".Genre")
rating=$(echo "$data | jq -r ".imdbRating")
summary=$(echo "$data | jq -r ".Plot")

# Print the movie data.
echo "Title: $title"
echo "Year: $year"
echo "Genre: $genre"
echo "Rating: $rating"
echo "Plot: $summary"