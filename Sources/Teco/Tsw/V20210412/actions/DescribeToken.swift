//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsw {
    /// 查询token
    ///
    /// 查询token
    @inlinable
    public func describeToken(_ input: DescribeTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTokenResponse > {
        self.client.execute(action: "DescribeToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询token
    ///
    /// 查询token
    @inlinable
    public func describeToken(_ input: DescribeTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTokenResponse {
        try await self.client.execute(action: "DescribeToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeToken请求参数结构体
    public struct DescribeTokenRequest: TCRequestModel {
        /// 命名空间
        public let namespace: String
        
        public init (namespace: String) {
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
        }
    }
    
    /// DescribeToken返回参数结构体
    public struct DescribeTokenResponse: TCResponseModel {
        /// token
        public let result: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}