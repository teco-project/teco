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
    /// IsolateSubscribe请求参数结构体
    public struct IsolateSubscribeRequest: TCRequestModel {
        /// 订阅实例ID
        public let subscribeId: String

        public init(subscribeId: String) {
            self.subscribeId = subscribeId
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
        }
    }

    /// IsolateSubscribe返回参数结构体
    public struct IsolateSubscribeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 隔离订阅实例
    ///
    /// 本接口（IsolateSubscribe）用于隔离小时计费的订阅实例。调用后，订阅实例将不能使用，同时停止计费。
    @inlinable @discardableResult
    public func isolateSubscribe(_ input: IsolateSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateSubscribeResponse> {
        self.client.execute(action: "IsolateSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离订阅实例
    ///
    /// 本接口（IsolateSubscribe）用于隔离小时计费的订阅实例。调用后，订阅实例将不能使用，同时停止计费。
    @inlinable @discardableResult
    public func isolateSubscribe(_ input: IsolateSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateSubscribeResponse {
        try await self.client.execute(action: "IsolateSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隔离订阅实例
    ///
    /// 本接口（IsolateSubscribe）用于隔离小时计费的订阅实例。调用后，订阅实例将不能使用，同时停止计费。
    @inlinable @discardableResult
    public func isolateSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateSubscribeResponse> {
        self.isolateSubscribe(.init(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }

    /// 隔离订阅实例
    ///
    /// 本接口（IsolateSubscribe）用于隔离小时计费的订阅实例。调用后，订阅实例将不能使用，同时停止计费。
    @inlinable @discardableResult
    public func isolateSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateSubscribeResponse {
        try await self.isolateSubscribe(.init(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }
}
