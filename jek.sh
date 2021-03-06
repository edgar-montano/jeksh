#!/bin/bash

# CONFIG OPTIONS
author="edgar_montano"
editor="vim"
filepath="_posts"


echo -e "
      ██         ██             ██
     ░██        ░██            ░██
     ░██  █████ ░██  ██  ██████░██
     ░██ ██░░░██░██ ██  ██░░░░ ░██████
     ░██░███████░████  ░░█████ ░██░░░██
 ██  ░██░██░░░░ ░██░██  ░░░░░██░██  ░██
░░█████ ░░██████░██░░██ ██████ ░██  ░██
 ░░░░░   ░░░░░░ ░░  ░░ ░░░░░░  ░░   ░░
"


echo -e "Enter title for : \c "
read  title
echo -e "Enter an image url: \c"
read image
echo -e "Enter a tag: \c"
read tag
echo -e "Enter a description \c"
read description

mkdir -p $filepath

TITLE=${title// /-}
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M)
FILENAME=$(echo "$filepath/$DATE-$TITLE.md")

touch $FILENAME
cat > $FILENAME << EOF
---
title: $title
layout: post
image: $image
date: $DATE $TIME
headerImage: true
tag: $tag
star: true
category: blog
author: $author
description: $description
---

***

EOF

$editor $FILENAME
