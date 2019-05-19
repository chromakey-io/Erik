// Package.swift
/* this is effectively DEAD.  It hasn't been updated since the original specs.
   It won't mesh with any of the modern 5.0 features.
   It also won't mesh with any of the upcoming 5.1 features (iOS, WatchOS, tvOS, everythingOS).

   Right now I'm working on a *mini* update that will allow for compatibility with the latest versions of Kanna, and BrightFutures.
      though it will not be feature complete, include tests, all targets, etc... it will be *just* enough for you to build for linux or osx.

   FUTURE: plans include a branch for 5.1, that we can hopefully use SOON!
   I've downloaded the latest release, and it looks like it's gonna knock people's socks off... all the way off 
   (and i'm just talking SPM build support for multi platforms :) ... 5.1 is gonna be a doozey all 'round.


   FOR NOW: all i'm doing is stating my devious plans to update Erik to work better with SPM :) ...

   .. since I figured out why Kanna was blocking with libxml both in SPM and XCode :(I can get back to work using carth) 
   easy fix (add libxml-2.0.pc to your pkgconfig path, more of a homebrew bug than a kanna one), hopefully they'll update their docs ... 
   since there's like 12 different bugs all for the same issue :)
*/

/*
 The MIT License (MIT)
 Copyright (c) 2016 Eric Marchand (phimage)
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import PackageDescription

let package = Package(
    name: "Erik",
    dependencies: [
        .Package(url: "https://github.com/tid-kijyun/Kanna.git", majorVersion: 4),
        .Package(url: "https://github.com/Thomvis/BrightFutures.git", majorVersion: 6)
    ]
)
