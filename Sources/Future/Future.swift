//
//  Future.swift
//  Erik
/*
The MIT License (MIT)
Copyright (c) 2015-2016 Eric Marchand (phimage)
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


import Foundation
import BrightFutures
import Result

extension Erik {

    public func visitURLFuture(_ url: URL) -> Future<Document, NSError> {
        let promise = Promise<Document, NSError>()
        
        self.visit(url: url) { (obj, err) -> Void in
            if let document = obj {
                promise.success(document)
            }
            else if let error = err {
                promise.failure(error as NSError)
            }
        }
        
        return promise.future
    }

    public func currentContentFuture() -> Future<Document, NSError> {
        let promise = Promise<Document, NSError>()
        
        self.currentContent { (obj, err) -> Void in
            if let document = obj {
                promise.success(document)
            }
            else if let error = err {
                promise.failure(error as NSError)
            }
        }

        return promise.future
    }

    public func evaluateFuture(javaScript: String) -> Future<Any?, NSError> {
        let promise = Promise<Any?, NSError>()
        
        self.evaluate(javaScript: javaScript) { (obj, err) -> Void in
            if let error = err {
                promise.failure(error as NSError)
            }
            else {
                promise.success(obj)
            }
        }
        
        return promise.future
    }

    public static func visitFuture(url: URL) -> Future<Document, NSError> {
        return Erik.sharedInstance.visitURLFuture(url)
    }

    public static func currentContentFuture() -> Future<Document, NSError> {
        return Erik.sharedInstance.currentContentFuture()
    }
    
    public static func evaluateFuture(javaScript: String) -> Future<Any?, NSError>  {
        return Erik.sharedInstance.evaluateFuture(javaScript: javaScript)
    }
}