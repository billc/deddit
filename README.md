# Deddit

Dart port of example GO tutorial: [geddit](https://github.com/nf/reddit). Deddit retrieves the most recent headlines from a given subreddit. See dartlang_news.dart for a runnable example.

## Design
Deddit mostly replicates the behavior and code structure found in the Go tutorial. Exceptions being

* Deddit.get executes asynchronously and returns a Future.

* JsonObject package is used for constructing a news item. Package is used to map the JSON response to a specific class implementation for the news item.

* Errors are currently ignored.

## Comparison
Both versions are great examples for highlighting language features. 

The original GO application shows

* simplicity of a functional program. The code is structured is a straight forward manner.

* the power of mapping a JSON object to a data structure with little overhead. This may also be achievable in the Dart version with more investigation into the JSON decode features.

* the ease to return errors as part of the function completing.

The Dart version was more of an exercise for my own personal learning. By porting the GO application, I found Dart

* initially challenging to understand the difference between the multiple http libraries. Different HTTP packages are available based on whether you are implementing in the browser or server.

* exceptionally terse in its syntax way more so than Java and close to the expressiveness of Ruby.

* very deep in its use of asynchronous environment. I need to further research how to use Futures & Streams. But, am even more anxious, for the incorporation of await/defer.


