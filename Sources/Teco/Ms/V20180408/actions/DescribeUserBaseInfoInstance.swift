//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Ms {
    /// DescribeUserBaseInfoInstance请求参数结构体
    public struct DescribeUserBaseInfoInstanceRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeUserBaseInfoInstance返回参数结构体
    public struct DescribeUserBaseInfoInstanceResponse: TCResponse {
        /// 用户uin信息
        public let userUin: UInt64

        /// 用户APPID信息
        public let userAppid: UInt64

        /// 系统时间戳
        public let timeStamp: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userUin = "UserUin"
            case userAppid = "UserAppid"
            case timeStamp = "TimeStamp"
            case requestId = "RequestId"
        }
    }

    /// 获取用户基础信息
    @inlinable
    public func describeUserBaseInfoInstance(_ input: DescribeUserBaseInfoInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserBaseInfoInstanceResponse> {
        self.client.execute(action: "DescribeUserBaseInfoInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户基础信息
    @inlinable
    public func describeUserBaseInfoInstance(_ input: DescribeUserBaseInfoInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserBaseInfoInstanceResponse {
        try await self.client.execute(action: "DescribeUserBaseInfoInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户基础信息
    @inlinable
    public func describeUserBaseInfoInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserBaseInfoInstanceResponse> {
        self.describeUserBaseInfoInstance(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户基础信息
    @inlinable
    public func describeUserBaseInfoInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserBaseInfoInstanceResponse {
        try await self.describeUserBaseInfoInstance(.init(), region: region, logger: logger, on: eventLoop)
    }
}
