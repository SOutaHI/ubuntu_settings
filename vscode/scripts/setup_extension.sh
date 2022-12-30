#!/bin/sh

# --------------------------------------
# setup Recommend VSCode Extensions
# --------------------------------------


## install Clang-tidy for static anarysis of c++
sudo apt-get install clang-tidy

function SetupVSCodeExtensions()
{
    echo "----------------------------"
    echo "input path for setup workspace"
    read specify_path

    ## check length of input string
    if [ ${#specify_path} -gt 1 ]; then
        ## check if input string is path of dir
        if [  -d $specify_path ]; then
            echo $specify_path is exists
            echo "---- make setting dir. ----"
            mkdir -p $specify_path/.vscode/
            echo "---- copy setting files. ----"
            cp ../config/extensions.json $specify_path/.vscode/
            cp ../config/setting.json $specify_path/.vscode/
            echo "---- Finish to setup. ----"
        else
            echo "Wrong path. please check input path."
        fi
    else
        echo "Wrong path. please check input path."
    fi

}

## setup workspace
SetupVSCodeExtensions
