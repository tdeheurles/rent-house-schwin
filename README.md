# Host privately pictures on AWS

### Stack
- website
    - react
        - [images-viewer](https://www.npmjs.com/package/react-images-viewer)
- infrastructure
    - aws
        - s3

### Reduce image size
```bash
sudo apt-get install imagemagick

SOME_PATH="/foo/bar"
for picture in $(find $SOME_PATH/* -maxdepth 0 -type f)
do
  convert $picture -quality 60 $picture        
done
```
