.nuget\nuget.exe restore
if not exist packages\FAKE\tools\Fake.exe ( 
  .nuget\nuget.exe install FAKE -OutputDirectory packages -ExcludeVersion 
)
if not exist packages\SourceLink.Fake\tools\Fake.fsx ( 
  .nuget\nuget.exe install SourceLink.Fake -OutputDirectory packages -ExcludeVersion -Prerelease
)
packages\FAKE\tools\FAKE.exe build.fsx %*