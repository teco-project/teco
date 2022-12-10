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

extension Tcss {
    /// 查询容器逃逸安全状态
    ///
    /// DescribeEscapeSafeState 查询容器逃逸安全状态
    @inlinable
    public func describeEscapeSafeState(_ input: DescribeEscapeSafeStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEscapeSafeStateResponse > {
        self.client.execute(action: "DescribeEscapeSafeState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器逃逸安全状态
    ///
    /// DescribeEscapeSafeState 查询容器逃逸安全状态
    @inlinable
    public func describeEscapeSafeState(_ input: DescribeEscapeSafeStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeSafeStateResponse {
        try await self.client.execute(action: "DescribeEscapeSafeState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEscapeSafeState请求参数结构体
    public struct DescribeEscapeSafeStateRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeEscapeSafeState返回参数结构体
    public struct DescribeEscapeSafeStateResponse: TCResponseModel {
        /// Unsafe：存在风险，Safe：暂无风险,UnKnown:未知风险
        public let isSafe: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case isSafe = "IsSafe"
            case requestId = "RequestId"
        }
    }
}