<#
Polly is a speech synthesizer
Reference: https://docs.aws.amazon.com/cli/latest/reference/polly

#>
exit #PREVENT F5
aws polly help
#confirm correct path so can access mp3s
Get-Location
#Set-Location .\scripts

aws polly synthesize-speech `
    --output-format mp3 `
    --voice-id Matthew `
    --text 'Hello CloudSkills Community, I hope you find AWS Command Line Intriguing!' `
    .\resources\hello.mp3

Invoke-Expression .\resources\hello.mp3

aws polly describe-voices --language-code en-US
#use json in a powershell variable and loop
aws polly describe-voices --language-code en-US --query 'Voices[*].[Name]' --output table
$names = aws polly describe-voices --language-code en-US --query 'Voices[*].[Name]' | ConvertFrom-Json

# assumes path to write mp3 is ..\media, change this as needed
foreach ($name in $names) {
    $text = "`'Hi, I am $name`'"
    $command = "aws polly synthesize-speech --output-format mp3 --voice-id $name --text $text .\resources\hi-from-$name.mp3"
    Invoke-Expression $command    
    #todo test with fmedia. cinst fmedia ; fmedia path ..\media\hi-from-$name.mp3
}
