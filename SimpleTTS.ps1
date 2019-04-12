Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$text = Get-Clipboard

if ($text.Length -gt 0) {
    $speak.Speak($text)
} else {
    write "Else statement..."
    $result = $speak.SpeakAsync("There is no text on the clipboard right now. Try to copy something and then run Read-It.")
}

