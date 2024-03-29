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

extension Ses {
    /// ListEmailIdentities请求参数结构体
    public struct ListEmailIdentitiesRequest: TCRequest {
        public init() {
        }
    }

    /// ListEmailIdentities返回参数结构体
    public struct ListEmailIdentitiesResponse: TCResponse {
        /// 发信域名列表
        public let emailIdentities: [EmailIdentity]

        /// 最大信誉等级
        public let maxReputationLevel: UInt64

        /// 单域名最高日发送量
        public let maxDailyQuota: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case emailIdentities = "EmailIdentities"
            case maxReputationLevel = "MaxReputationLevel"
            case maxDailyQuota = "MaxDailyQuota"
            case requestId = "RequestId"
        }
    }

    /// 获取当前发信域名列表
    ///
    /// 获取当前发信域名列表，包含已验证通过与未验证的域名
    @inlinable
    public func listEmailIdentities(_ input: ListEmailIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailIdentitiesResponse> {
        self.client.execute(action: "ListEmailIdentities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前发信域名列表
    ///
    /// 获取当前发信域名列表，包含已验证通过与未验证的域名
    @inlinable
    public func listEmailIdentities(_ input: ListEmailIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailIdentitiesResponse {
        try await self.client.execute(action: "ListEmailIdentities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前发信域名列表
    ///
    /// 获取当前发信域名列表，包含已验证通过与未验证的域名
    @inlinable
    public func listEmailIdentities(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailIdentitiesResponse> {
        self.listEmailIdentities(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取当前发信域名列表
    ///
    /// 获取当前发信域名列表，包含已验证通过与未验证的域名
    @inlinable
    public func listEmailIdentities(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailIdentitiesResponse {
        try await self.listEmailIdentities(.init(), region: region, logger: logger, on: eventLoop)
    }
}
