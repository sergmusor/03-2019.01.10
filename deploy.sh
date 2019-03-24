#! /bin/sh -e

baseurl='https://api.bintray.com/content'
project='03-2019.01.10'
name='ipfilter'
version="0.0.$1"
user='sergmusor'

for component in prog lib; do
	package="${name}-${component}_${version}_amd64.deb"
	curl -T "$package" -u sergmusor:"$2" "$baseurl/$user/$project/$name/$version/pool/main/${name::1}/$name/$package;deb_distribution=xenial;deb_component=main;deb_architecture=amd64;publish=1"
done
