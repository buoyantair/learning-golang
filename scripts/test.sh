cd ./packages/
for dir in ./*/     # list directories in the form "/tmp/dirname/"
do
    dir=${dir%*/}      # remove the trailing "/"
    dirname=${dir##*/} # get everything after the final "/"
    echo "building ${dirname}..."
    cd ${dirname}
    pwd
    go test -v .
    cd ..
done