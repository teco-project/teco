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

extension Iotvideo {
    /// DescribeUser请求参数结构体
    public struct DescribeUserRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeUser返回参数结构体
    public struct DescribeUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 获取用户信息
    ///
    /// 获取video消费版用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserResponse > {
        self.client.execute(action: "DescribeUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取用户信息
    ///
    /// 获取video消费版用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.client.execute(action: "DescribeUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
