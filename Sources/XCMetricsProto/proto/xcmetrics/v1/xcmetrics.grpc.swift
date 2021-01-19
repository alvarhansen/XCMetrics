//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: proto/xcmetrics/v1/xcmetrics.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Spotify_Xcmetrics_XCMetricsServiceClient, then call methods of this protocol to make API calls.
public protocol Spotify_Xcmetrics_XCMetricsService {
  func uploadBuildMetrics(_ request: Spotify_Xcmetrics_UploadBuildMetricsRequest, callOptions: CallOptions?) -> UnaryCall<Spotify_Xcmetrics_UploadBuildMetricsRequest, Spotify_Xcmetrics_UploadBuildMetricsResponse>
}

public final class Spotify_Xcmetrics_XCMetricsServiceClient: GRPCClient, Spotify_Xcmetrics_XCMetricsService {
  public let connection: ClientConnection
  public var defaultCallOptions: CallOptions

  /// Creates a client for the spotify.xcmetrics.XCMetrics service.
  ///
  /// - Parameters:
  ///   - connection: `ClientConnection` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(connection: ClientConnection, defaultCallOptions: CallOptions = CallOptions()) {
    self.connection = connection
    self.defaultCallOptions = defaultCallOptions
  }

  /// Asynchronous unary call to UploadBuildMetrics.
  ///
  /// - Parameters:
  ///   - request: Request to send to UploadBuildMetrics.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func uploadBuildMetrics(_ request: Spotify_Xcmetrics_UploadBuildMetricsRequest, callOptions: CallOptions? = nil) -> UnaryCall<Spotify_Xcmetrics_UploadBuildMetricsRequest, Spotify_Xcmetrics_UploadBuildMetricsResponse> {
    return self.makeUnaryCall(path: "/spotify.xcmetrics.XCMetrics/UploadBuildMetrics",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Spotify_Xcmetrics_XCMetricsProvider: CallHandlerProvider {
  func uploadBuildMetrics(request: Spotify_Xcmetrics_UploadBuildMetricsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Spotify_Xcmetrics_UploadBuildMetricsResponse>
}

extension Spotify_Xcmetrics_XCMetricsProvider {
  public var serviceName: String { return "spotify.xcmetrics.XCMetrics" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "UploadBuildMetrics":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.uploadBuildMetrics(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

