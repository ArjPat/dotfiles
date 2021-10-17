
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# Aliases
New-Alias open ii
New-Alias vim 'C:\Program Files\Vim\vim82\vim.exe'

Function tail {
    Get-Content -Tail $args[0] $args[1] -Wait
}

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "C:\Users\Arjun\Anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion
