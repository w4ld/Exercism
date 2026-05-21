Function Get-BobResponse() {
    <#
    .SYNOPSIS
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    
    .DESCRIPTION
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    Bob answers 'Sure.' if you ask him a question.
    He answers 'Whoa, chill out!' if you yell at him.
    He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
    He says 'Fine. Be that way!' if you address him without actually saying
    anything.
    He answers 'Whatever.' to anything else. 
    .PARAMETER HeyBob
    The sentence you say to Bob.
    
    .EXAMPLE
    Get-BobResponse -HeyBob "Hi Bob"
    #>
    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )
    $HeyBob2=$($HeyBob -replace '\s','')
    $HeyBob3 = $HeyBob2 -match "[a-zA-Z]"
    if($HeyBob2.Length -gt 0 ){       
        if($HeyBob2.substring([int]$($HeyBob2.Length-1), 1) -eq "?"){
            if ($($HeyBob2 -ceq $HeyBob2.ToUpper()) -and $($HeyBob3)){
                Return "Calm down, I know what I'm doing!"
            }else{
                Return "Sure."
            }
        }
        elseif($HeyBob2 -ceq $HeyBob2.ToUpper() -and $HeyBob3){
            Return "Whoa, chill out!"
        }
        else{
            Return "Whatever."
        }
    }
    else{
        Return "Fine. Be that way!"
    }
}