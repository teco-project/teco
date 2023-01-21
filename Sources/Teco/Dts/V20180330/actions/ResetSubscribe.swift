//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dts {
    /// ResetSubscribe请求参数结构体
    public struct ResetSubscribeRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        public init(subscribeId: String) {
            self.subscribeId = subscribeId
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
        }
    }

    /// ResetSubscribe返回参数结构体
    public struct ResetSubscribeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置数据订阅实例
    ///
    /// 本接口(ResetSubscribe)用于重置数据订阅实例，已经激活的数据订阅实例，重置后可以使用ActivateSubscribe接口绑定其他的数据库实例
    @inlinable @discardableResult
    public func resetSubscribe(_ input: ResetSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetSubscribeResponse> {
        self.client.execute(action: "ResetSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置数据订阅实例
    ///
    /// 本接口(ResetSubscribe)用于重置数据订阅实例，已经激活的数据订阅实例，重置后可以使用ActivateSubscribe接口绑定其他的数据库实例
    @inlinable @discardableResult
    public func resetSubscribe(_ input: ResetSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetSubscribeResponse {
        try await self.client.execute(action: "ResetSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置数据订阅实例
    ///
    /// 本接口(ResetSubscribe)用于重置数据订阅实例，已经激活的数据订阅实例，重置后可以使用ActivateSubscribe接口绑定其他的数据库实例
    @inlinable @discardableResult
    public func resetSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetSubscribeResponse> {
        self.resetSubscribe(ResetSubscribeRequest(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置数据订阅实例
    ///
    /// 本接口(ResetSubscribe)用于重置数据订阅实例，已经激活的数据订阅实例，重置后可以使用ActivateSubscribe接口绑定其他的数据库实例
    @inlinable @discardableResult
    public func resetSubscribe(subscribeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetSubscribeResponse {
        try await self.resetSubscribe(ResetSubscribeRequest(subscribeId: subscribeId), region: region, logger: logger, on: eventLoop)
    }
}
