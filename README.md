## DSCI 522 individual assignment on Quarto reproducible reports using R

This is a template repository 
for the individual assignment on Quarto reproducible reports using Python
from the DSCI 522 (Workflows for data science) course.
Instructions for this assignment can be found on the DSCI 522 course website.

### Dependencies

- [Docker](https://www.docker.com/) 

### Usage

#### Setup

> If you are using Windows or Mac, make sure Docker Desktop is running.

1. Clone this GitHub repository.

#### Running the analysis

1. Navigate to the root of this project on your computer using the
   command line and enter the following command:

``` 
docker compose up
```

2. Visit a web browser on your computer and type: http://localhost:8787

3. To run the analysis,
open a terminal (from the docker rstudio) and run the following commands:

```
Rscript scripts/generate_figures.R --input_dir="data/00030067-eng.csv" \
    --out_dir="results"

quarto render reports/qmd_example.qmd --to html
quarto render reports/qmd_example.qmd --to pdf
```

#### Clean up

1. To shut down the container and clean up the resources, 
type `Cntrl` + `C` in the terminal
where you launched the container, and then type `docker compose rm`

## Developer notes

### Developer dependencies
- `conda` (version 23.9.0 or higher)
- `conda-lock` (version 2.5.7 or higher)

### Adding a new dependency

1. Add the dependency to the `Dockerfile` file on a new branch.

2. Re-build the Docker image locally to ensure it builds and runs properly.

3. Push the changes to GitHub. A new Docker
   image will be built and pushed to Docker Hub automatically.
   It will be tagged with the SHA for the commit that changed the file.

4. Update the `docker-compose.yml` file on your branch to use the new
   container image (make sure to update the tag specifically).

5. Send a pull request to merge the changes into the `main` branch. 

### License:
The non-software content of this template repository is licensed under the 
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) License](https://creativecommons.org/licenses/by-nc-sa/4.0/). 
The software content of this template repository licensed under the [MIT License](https://spdx.org/licenses/MIT.html). See the [license file](LICENSE.md) for more information.