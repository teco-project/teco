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
    /// DescribeSafeAuthFlagIntl请求参数结构体
    public struct DescribeSafeAuthFlagIntlRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeSafeAuthFlagIntl返回参数结构体
    public struct DescribeSafeAuthFlagIntlResponse: TCResponse {
        /// 登录保护设置
        public let loginFlag: LoginActionFlagIntl

        /// 敏感操作保护设置
        public let actionFlag: LoginActionFlagIntl

        /// 异地登录保护设置
        public let offsiteFlag: OffsiteFlag

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loginFlag = "LoginFlag"
            case actionFlag = "ActionFlag"
            case offsiteFlag = "OffsiteFlag"
            case requestId = "RequestId"
        }
    }

    /// 查询安全设置(国际站)
    @inlinable
    public func describeSafeAuthFlagIntl(_ input: DescribeSafeAuthFlagIntlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagIntlResponse> {
        self.client.execute(action: "DescribeSafeAuthFlagIntl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全设置(国际站)
    @inlinable
    public func describeSafeAuthFlagIntl(_ input: DescribeSafeAuthFlagIntlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagIntlResponse {
        try await self.client.execute(action: "DescribeSafeAuthFlagIntl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全设置(国际站)
    @inlinable
    public func describeSafeAuthFlagIntl(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagIntlResponse> {
        self.describeSafeAuthFlagIntl(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全设置(国际站)
    @inlinable
    public func describeSafeAuthFlagIntl(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagIntlResponse {
        try await self.describeSafeAuthFlagIntl(.init(), region: region, logger: logger, on: eventLoop)
    }
}
