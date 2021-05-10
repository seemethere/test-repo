# https://developercommunity.visualstudio.com/t/install-specific-version-of-vs-component/1142479
# https://docs.microsoft.com/en-us/visualstudio/releases/2019/history#release-dates-and-build-numbers

# 16.8.5 BuildTools
$VS_INSTALL_ARGS = @(
    "--nocache",
    "--quiet",
    "--wait",
    "--add Microsoft.VisualStudio.Workload.VCTools",
    "--add Microsoft.Component.MSBuild",
    "--add Microsoft.VisualStudio.Component.Roslyn.Compiler",
    "--add Microsoft.VisualStudio.Component.TextTemplating",
    "--add Microsoft.VisualStudio.Component.VC.CoreIde",
    "--add Microsoft.VisualStudio.Component.VC.Redist.14.Latest",
    "--add Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Core",
    "--add Microsoft.VisualStudio.Component.VC.Tools.x86.x64",
    "--add Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Win81"
)
choco install -y visualstudio2019buildtools --version=16.8.5.0 --package-parameters "$VS_INSTALL_ARGS -NoNewWindow -Wait -PassThru"
