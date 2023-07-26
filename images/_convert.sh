for f in $(find . -name "*.png"); do
    if [ ! -f "${f%.*}.webp" ]; then
        cwebp -short -q 90 -alpha_q 100 -m 6 "$f" -o "${f%.*}".webp
    fi
done


for f in $(find . -name "*.jpg"); do
    if [ ! -f "${f%.*}.webp" ]; then
        cwebp -short -q 80 "$f" -o "${f%.*}".webp
    fi
done