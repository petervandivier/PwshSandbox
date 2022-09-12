Describe 'SomeThing' {
    BeforeAll {
        $Urls = 'www.google.com', 'reddit.com'
    }
    It '<Url> at <Count>' {

        $Urls | Write-Host # 🔴 not in scope here
    }
    It '<Url> at <Count>' -ForEach @(
        @{
            Url   = $urls[0] # 🟢 valid
            Count = 2
        }
    ) {
        $Url | Write-Host
        # 🟢 valid, I think "$_" is implicitly in context? inside 'it' blocks' 
    }
}