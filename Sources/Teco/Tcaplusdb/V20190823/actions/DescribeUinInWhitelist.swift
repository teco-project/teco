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

extension Tcaplusdb {
    /// 查询本用户是否在白名单中
    ///
    /// 查询本用户是否在白名单中，控制是否能创建TDR类型的APP或表
    @inlinable
    public func describeUinInWhitelist(_ input: DescribeUinInWhitelistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUinInWhitelistResponse > {
        self.client.execute(action: "DescribeUinInWhitelist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询本用户是否在白名单中
    ///
    /// 查询本用户是否在白名单中，控制是否能创建TDR类型的APP或表
    @inlinable
    public func describeUinInWhitelist(_ input: DescribeUinInWhitelistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUinInWhitelistResponse {
        try await self.client.execute(action: "DescribeUinInWhitelist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUinInWhitelist请求参数结构体
    public struct DescribeUinInWhitelistRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeUinInWhitelist返回参数结构体
    public struct DescribeUinInWhitelistResponse: TCResponseModel {
        /// 查询结果：`FALSE` 否；`TRUE` 是
        public let result: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
