+++
title = "Setup"
weight = 10
+++

Document installation steps, entry checks, and platform-specific notes here.

{{< tabs >}}
{{< tab name="macOS" selected=true >}}
```bash
brew install hugo go
```
{{< /tab >}}
{{< tab name="Linux" >}}
```bash
sudo apt install hugo golang
```
{{< /tab >}}
{{< tab name="Windows" >}}
```powershell
winget install Hugo.Hugo.Extended
```
{{< /tab >}}
{{< /tabs >}}

{{< tabs >}}
{{< tab name="bash" selected=true >}}
```bash
hugo version
go version
```
{{< /tab >}}
{{< tab name="zsh" >}}
```zsh
hugo version
go version
```
{{< /tab >}}
{{< tab name="fish" >}}
```fish
hugo version
go version
```
{{< /tab >}}
{{< /tabs >}}
