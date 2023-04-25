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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cam {
    /// DescribeSafeAuthFlagColl请求参数结构体
    public struct DescribeSafeAuthFlagCollRequest: TCRequestModel {
        /// 子账号
        public let subUin: UInt64

        public init(subUin: UInt64) {
            self.subUin = subUin
        }

        enum CodingKeys: String, CodingKey {
            case subUin = "SubUin"
        }
    }

    /// DescribeSafeAuthFlagColl返回参数结构体
    public struct DescribeSafeAuthFlagCollResponse: TCResponseModel {
        /// 登录保护设置
        public let loginFlag: LoginActionFlag

        /// 敏感操作保护设置
        public let actionFlag: LoginActionFlag

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

    /// 获取子账号安全设置
    @inlinable
    public func describeSafeAuthFlagColl(_ input: DescribeSafeAuthFlagCollRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagCollResponse> {
        self.client.execute(action: "DescribeSafeAuthFlagColl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取子账号安全设置
    @inlinable
    public func describeSafeAuthFlagColl(_ input: DescribeSafeAuthFlagCollRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagCollResponse {
        try await self.client.execute(action: "DescribeSafeAuthFlagColl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取子账号安全设置
    @inlinable
    public func describeSafeAuthFlagColl(subUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafeAuthFlagCollResponse> {
        self.describeSafeAuthFlagColl(.init(subUin: subUin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取子账号安全设置
    @inlinable
    public func describeSafeAuthFlagColl(subUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafeAuthFlagCollResponse {
        try await self.describeSafeAuthFlagColl(.init(subUin: subUin), region: region, logger: logger, on: eventLoop)
    }
}
