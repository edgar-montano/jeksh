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

TITLE=${title// /-}
DATE=$(date +%Y-%d-%m)
TIME=$(date +%H:%M)
FILENAME=$(echo "$filepath/$DATE-$TITLE.md")

touch $FILENAME
cat > $FILENAME << EOF
---
title: $TITLE
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

# $title
EOF

$editor $FILENAME
