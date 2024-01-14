$projectID = gcloud config get-value project;
docker build -t gcr.io/$projectID/buildtools:latest -m 2GB .;
if ($?) {
    docker push gcr.io/$projectID/buildtools:latest;
}
