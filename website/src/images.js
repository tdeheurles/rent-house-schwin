const images = [];
const base_address = "http://tdeheurles-rent-house-schwin.s3-website-eu-west-1.amazonaws.com/pictures/P1030"

for (var i = 697; i < 757; i++) {
    const image_address = `${base_address}${i}.JPG`
    images.push({
        original: image_address,
        thumbnail: image_address
    });
}

export default images;