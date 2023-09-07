# Quickly cat the last written file
alias catlast='cat $(ls -c1 | head -n1)'

# Override the cd command & activate
# python venv if a venv folder is present
cd() {
    # Call the built-in cd command
    builtin cd "$@" && {

        # Check if there's a 'venv' directory in the current working directory
        if [ -d "venv/bin" ]; then
            # If found, activate the virtual environment
            source venv/bin/activate
        fi
    }   
}
