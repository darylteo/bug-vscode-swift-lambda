// https://github.com/swift-server/swift-aws-lambda-runtime

// Import the module
import AWSLambdaRuntime

@main
struct MyLambda: SimpleLambdaHandler {
    // in this example we are receiving and responding with strings
    func handle(_ name: String, context: LambdaContext) async throws -> String {
        "Hello, \(name)"
    }
}