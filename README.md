# Java Maven Project with GitHub Actions CI/CD

This project includes a basic CI/CD pipeline using GitHub Actions. It builds, tests, and deploys your application to dev, test, or staging environments.

## Branch Logic

- **develop**: Deploys to `dev`, then `test`
- **master** (via pull request): Deploys to `stg`

## Files

- `.github/workflows/cicd.yml`: CI/CD pipeline
- `build.sh`: Builds the Maven project
- `test.sh`: Runs unit tests
- `deploy.sh`: Deploys to the specified environment

## Requirements

- Java 17
- Maven installed
- GitHub repository

## Usage

Make sure your project includes a valid `pom.xml` and `src/` directory.

To test locally:

```bash
chmod +x build.sh test.sh deploy.sh
./build.sh
./test.sh
./deploy.sh dev
```

## Notes

Make sure your GitHub repository has `master` as a protected branch with pull requests required to merge.
