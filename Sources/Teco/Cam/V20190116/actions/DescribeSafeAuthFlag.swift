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

extension Cam {
    /// DescribeSafeAuthFlag请求参数结构体
    public struct DescribeSafeAuthFlagRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeSafeAuthFlag返回参数结构体
    public struct DescribeSafeAuthFlagResponse: TCResponse {
        /// 登录保护设置
        public let loginFlag: LoginActionFlag

        /// 敏感操作保护设置
        public let actionFlag: LoginActionFlag

        /// 异地登录保护设置
        public let offsiteFlag: OffsiteFlag

        /// 1: 提示7天信任设备 0: 不提示
        public let promptTrust: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loginFlag = "LoginFlag"
            case actionFlag = "ActionFlag"
            case offsiteFlag = "OffsiteFlag"
            case promptTrust = "PromptTrust"
            case requestId = "RequestId"
        }
    }

    /// 查询用户安全设置
    @inlinable
    public func describeSafeAuthFlag(_ input: DescribeSafeAuthFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagResponse> {
        self.client.execute(action: "DescribeSafeAuthFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户安全设置
    @inlinable
    public func describeSafeAuthFlag(_ input: DescribeSafeAuthFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagResponse {
        try await self.client.execute(action: "DescribeSafeAuthFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户安全设置
    @inlinable
    public func describeSafeAuthFlag(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagResponse> {
        self.describeSafeAuthFlag(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户安全设置
    @inlinable
    public func describeSafeAuthFlag(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagResponse {
        try await self.describeSafeAuthFlag(.init(), region: region, logger: logger, on: eventLoop)
    }
}
