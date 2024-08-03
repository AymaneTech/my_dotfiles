function mvn-new-project() {
    # Prompt for app name
    read "app_name?Enter app name: "
    if [ -z "$app_name" ]; then
        echo "App name cannot be empty."
        return 1
    fi

    # Prompt for artifact ID
    read "artifact_id?Enter artifact ID (e.g., com.example.app): "
    if [ -z "$artifact_id" ]; then
        echo "Artifact ID cannot be empty."
        return 1
    fi

    # Generate the new Maven project
    mvn archetype:generate \
        -DgroupId="$artifact_id" \
        -DartifactId="$app_name" \
        -DarchetypeArtifactId=maven-archetype-quickstart \
        -DinteractiveMode=false

    # Navigate into the project directory
    cd "$app_name"

    echo "New Maven project '$app_name' created successfully."
}

alias mvp="mvn-new-project"

alias mvr="mvn -q -e clean install && clear && mvn -q -e exec:java"
