parentDirname="$(dirname "$PWD")"
if [ "/Users/dste8/workspace" = $parentDirname ]
then
    echo "Parent directory is indeed /Users/dste8/workspace"
    
    echo "Exports run by the terminal runs -->"
    exports=$(cat env.json | jq -r 'to_entries[] | [" export "+.key,"\""+(.value|tostring+"\"")] | join("=")'); 
    
    while IFS= read -r line ; do 
        echo $line
        eval $line; 
    done <<< "$exports"

    echo "Pairs for pasting manually into Intellij Run Configurations -->"
    exports=$(cat env.json | jq -r 'to_entries[] | [.key,(.value|tostring)] | join("=")'); 
    while IFS= read -r line ; do 
        echo $line
    done <<< "$exports"
fi
