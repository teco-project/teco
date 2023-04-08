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

import TecoCore

extension Dts {
    /// ModifySubscribeName请求参数结构体
    public struct ModifySubscribeNameRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        /// 数据订阅实例的名称，长度限制为[1,60]
        public let subscribeName: String

        public init(subscribeId: String, subscribeName: String) {
            self.subscribeId = subscribeId
            self.subscribeName = subscribeName
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case subscribeName = "SubscribeName"
        }
    }

    /// ModifySubscribeName返回参数结构体
    public struct ModifySubscribeNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据订阅实例的名称
    ///
    /// 本接口(ModifySubscribeName)用于修改数据订阅实例的名称
    @inlinable @discardableResult
    public func modifySubscribeName(_ input: ModifySubscribeNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeNameResponse> {
        self.client.execute(action: "ModifySubscribeName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例的名称
    ///
    /// 本接口(ModifySubscribeName)用于修改数据订阅实例的名称
    @inlinable @discardableResult
    public func modifySubscribeName(_ input: ModifySubscribeNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeNameResponse {
        try await self.client.execute(action: "ModifySubscribeName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据订阅实例的名称
    ///
    /// 本接口(ModifySubscribeName)用于修改数据订阅实例的名称
    @inlinable @discardableResult
    public func modifySubscribeName(subscribeId: String, subscribeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeNameResponse> {
        self.modifySubscribeName(.init(subscribeId: subscribeId, subscribeName: subscribeName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例的名称
    ///
    /// 本接口(ModifySubscribeName)用于修改数据订阅实例的名称
    @inlinable @discardableResult
    public func modifySubscribeName(subscribeId: String, subscribeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeNameResponse {
        try await self.modifySubscribeName(.init(subscribeId: subscribeId, subscribeName: subscribeName), region: region, logger: logger, on: eventLoop)
    }
}
