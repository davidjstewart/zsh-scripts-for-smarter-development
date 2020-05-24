#!/bin/zsh

function openFoobarPipeline {
    foobarFolderNames=(foobarFront foobarBack)
    openPipeline ${foobarFolderNames}
}

function openPipeline {

    function openFirstIdeaInstance {
        projectFolderNames=($@)
        idea ${projectFolderNames[1]}
        waitEnoughTimeForIntellijToOpenProperly #2nd, 3rd, nth folders won't open without waiting 
    }

    function openOtherIdeaInstances {
        projectFolderNames=($@)
        for projectFolderName in "${projectFolderNames[@]:1}"; 
        do
            idea $projectFolderName
        done
    }

    function waitEnoughTimeForIntellijToOpenProperly {
        sleep 10
    }
    
    projectFolderNames=($@)
    openWorkspace
    openFirstIdeaInstance ${projectFolderNames}
    openOtherIdeaInstances ${projectFolderNames}

    unfunction openFirstIdeaInstance
    unfunction openOtherIdeaInstances
    unfunction waitEnoughTimeForIntellijToOpenProperly
}
