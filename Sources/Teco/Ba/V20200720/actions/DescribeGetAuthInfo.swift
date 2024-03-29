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

extension Ba {
    /// DescribeGetAuthInfo请求参数结构体
    public struct DescribeGetAuthInfoRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeGetAuthInfo返回参数结构体
    public struct DescribeGetAuthInfoResponse: TCResponse {
        /// 实名认证状态：0未实名，1已实名
        public let isTenPayMasked: String

        /// 实名认证类型：0个人，1企业
        public let isAuthenticated: String

        /// 认证类型，个人0，企业1
        public let type: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isTenPayMasked = "IsTenPayMasked"
            case isAuthenticated = "IsAuthenticated"
            case type = "Type"
            case requestId = "RequestId"
        }
    }

    /// 获取实名认证信息
    @inlinable
    public func describeGetAuthInfo(_ input: DescribeGetAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGetAuthInfoResponse> {
        self.client.execute(action: "DescribeGetAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实名认证信息
    @inlinable
    public func describeGetAuthInfo(_ input: DescribeGetAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGetAuthInfoResponse {
        try await self.client.execute(action: "DescribeGetAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实名认证信息
    @inlinable
    public func describeGetAuthInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGetAuthInfoResponse> {
        self.describeGetAuthInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实名认证信息
    @inlinable
    public func describeGetAuthInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGetAuthInfoResponse {
        try await self.describeGetAuthInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
