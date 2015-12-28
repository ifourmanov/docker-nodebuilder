# docker-nodebuilder
Docker image created for automated builds of nodejs applications on a CI system.

Contains sane defaults for npm and bower and ensures that files in mapped directory remain owned by user running the build.
Prevents docker builds to leave artifacts unremovable by your CI user.

## Usage
Environment Variables:
EXTERTNAL_ID: UID of build directory owner. Any artifacts will belong to that user.
BUILDER_FOLDERS: optional list of additional folders inside container to be owned by builder

```
docker run -v ${BUILDDIR}:/data -e  "EXTERNAL_ID=$(id -u)" ifourmanov/nodebuilder npm test
```
