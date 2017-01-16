package main

import (
	"fmt"
	"flag"
)

// Variables to identify the build
var (
	Version    = "0.0.1"
	BuildTime = "2000-01-01T00:00:00+0800"
	GitTag string
	Build string
)

func main() {
	vFlag := flag.Bool("v", false, "version")

	flag.Parse()

	if *vFlag {
		if len(Version) > 0{
			fmt.Println("Version: ", Version)
		}
		if len(BuildTime) > 0 {
			fmt.Println("Build time: ", BuildTime)
		}
		if len(GitTag) > 0{
			fmt.Println("Git tag: ", GitTag)
		}
		if len(Build) > 0 {
			fmt.Println("Build: ", Build)
		}
	}
}
