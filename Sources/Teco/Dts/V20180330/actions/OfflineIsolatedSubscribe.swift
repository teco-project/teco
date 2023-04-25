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

extension Dts {
    /// OfflineIsolatedSubscribe请求参数结构体
    public struct OfflineIsolatedSubscribeRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        public init(subscribeId: String) {
            self.subscribeId = subscribeId
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
        }
    }

    /// OfflineIsolatedSubscribe返回参数结构体
    public struct OfflineIsolatedSubscribeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 下线已隔离的数据订阅实例
    ///
    /// 本接口（OfflineIsolatedSubscribe）用于下线已隔离的数据订阅实例
    @inlinable @discardableResult
    public func offlineIsolatedSubscribe(_ input: OfflineIsolatedSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineIsolatedSubscribeResponse> {
        self.client.execute(action: "OfflineIsolatedSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下线已隔离的数据订阅实例
    ///
    /// 本接口（OfflineIsolatedSubscribe）用于下线已隔离的数据订阅实例
    @inlinable @discardableResult
    public func offlineIsolatedSubscribe(_ input: OfflineIsolatedSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineIsolatedSubscribeResponse {
        try await self.client.execute(action: "OfflineIsolatedSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下线已隔离的数据订阅实例
    ///
    /// 本接口（OfflineIsolatedSubscribe）用于下线已隔离的数据订阅实例
    @inlinable @discardableResult
    public func offlineIsolatedSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineIsolatedSubscribeResponse> {
        self.offlineIsolatedSubscribe(.init(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }

    /// 下线已隔离的数据订阅实例
    ///
    /// 本接口（OfflineIsolatedSubscribe）用于下线已隔离的数据订阅实例
    @inlinable @discardableResult
    public func offlineIsolatedSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineIsolatedSubscribeResponse {
        try await self.offlineIsolatedSubscribe(.init(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }
}
