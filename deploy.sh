#! /bin/sh -e

name='ipfilter'
version="0.0.$1"
baseurl='https://api.bintray.com/content'
user='sergmusor'
project='03-2019.01.10'

for component in prog lib; do
	package="${name}-${component}_${version}_amd64.deb"
	curl -T "$package" -u sergmusor:"$2" "$baseurl/$user/$project/$name/$version/pool/main/${name::1}/$name/$package;deb_distribution=xenial;deb_component=main;deb_architecture=amd64;publish=1"
done
