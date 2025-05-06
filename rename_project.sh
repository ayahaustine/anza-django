#!/bin/bash

# Usage: ./rename_project.sh new_project_name
# Example: ./rename_project.sh my_new_project

if [ -z "$1" ]; then
    echo "Please provide a new project name"
    exit 1
fi

NEW_NAME=$1
OLD_NAME="backend"

#files to update
FILES=(
    "manage.py"
    "backend/settings/base.py"
    "backend/settings/development.py"
    "backend/settings/production.py"
    "backend/settings/test.py"
    "backend/wsgi.py"
    "backend/asgi.py"
    "backend/urls.py"
    "backend/celery.py"
)

#update project name in each file
for FILE in "${FILES[@]}"; do
    if [-f "$FILE"]; then
        sed -i "s/\b$OLD_NAME\b/$NEW_NAME/g" "$FILE"
        echo "Updated $FILE"
    else
        echo "$FILE does not exist"
    fi
done

# update the project directory name
if [ -d "$OLD_NAME" ]; then
    mv "$OLD_NAME" "$NEW_NAME"
    echo "Updated project directory name to $NEW_NAME"
else
    echo "$OLD_NAME directory does not exist"
fi

echo "Project rename to $NEW_NAME completed successfully"