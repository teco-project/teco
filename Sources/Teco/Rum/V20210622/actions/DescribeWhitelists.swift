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

extension Rum {
    /// 获取白名单列表
    @inlinable
    public func describeWhitelists(_ input: DescribeWhitelistsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWhitelistsResponse > {
        self.client.execute(action: "DescribeWhitelists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取白名单列表
    @inlinable
    public func describeWhitelists(_ input: DescribeWhitelistsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhitelistsResponse {
        try await self.client.execute(action: "DescribeWhitelists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWhitelists请求参数结构体
    public struct DescribeWhitelistsRequest: TCRequestModel {
        /// 实例instance-ID
        public let instanceID: String
        
        public init (instanceID: String) {
            self.instanceID = instanceID
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
        }
    }
    
    /// DescribeWhitelists返回参数结构体
    public struct DescribeWhitelistsResponse: TCResponseModel {
        /// 白名单列表
        public let whitelistSet: [Whitelist]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case whitelistSet = "WhitelistSet"
            case requestId = "RequestId"
        }
    }
}
