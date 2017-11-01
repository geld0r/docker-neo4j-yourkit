# docker-neo4j-yourkit
Docker Image for the Neo4j Graph Database with integrated YourKit Profiler agent

Based on the official neo4j image `neo4j/neo4j:3.2` (see https://github.com/neo4j/docker-neo4j). Adds the YourKit (https://www.yourkit.com/) agent (Version 2016.02) and launches it with Neo4j.
The agent is exposed on port `10001`.

Image is available as [gelder/docker-neo4j-yourkit](https://hub.docker.com/r/gelder/docker-neo4j-yourkit/) on DockerHub
