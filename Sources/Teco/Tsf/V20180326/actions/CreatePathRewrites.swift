//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// CreatePathRewrites请求参数结构体
    public struct CreatePathRewritesRequest: TCRequestModel {
        /// 路径重写列表
        public let pathRewrites: PathRewriteCreateObject
        
        public init (pathRewrites: PathRewriteCreateObject) {
            self.pathRewrites = pathRewrites
        }
        
        enum CodingKeys: String, CodingKey {
            case pathRewrites = "PathRewrites"
        }
    }
    
    /// CreatePathRewrites返回参数结构体
    public struct CreatePathRewritesResponse: TCResponseModel {
        /// true/false
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 创建路径重写
    @inlinable
    public func createPathRewrites(_ input: CreatePathRewritesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePathRewritesResponse > {
        self.client.execute(action: "CreatePathRewrites", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建路径重写
    @inlinable
    public func createPathRewrites(_ input: CreatePathRewritesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePathRewritesResponse {
        try await self.client.execute(action: "CreatePathRewrites", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
