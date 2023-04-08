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

extension Iecp {
    /// ApplyMarketComponent请求参数结构体
    public struct ApplyMarketComponentRequest: TCRequestModel {
        /// 组件ID
        public let id: Int64

        public init(id: Int64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
        }
    }

    /// ApplyMarketComponent返回参数结构体
    public struct ApplyMarketComponentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 使用组件市场中的组件
    ///
    /// 从组件市场选中组件并添加到应用模板列表
    @inlinable @discardableResult
    public func applyMarketComponent(_ input: ApplyMarketComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyMarketComponentResponse> {
        self.client.execute(action: "ApplyMarketComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用组件市场中的组件
    ///
    /// 从组件市场选中组件并添加到应用模板列表
    @inlinable @discardableResult
    public func applyMarketComponent(_ input: ApplyMarketComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyMarketComponentResponse {
        try await self.client.execute(action: "ApplyMarketComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用组件市场中的组件
    ///
    /// 从组件市场选中组件并添加到应用模板列表
    @inlinable @discardableResult
    public func applyMarketComponent(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyMarketComponentResponse> {
        self.applyMarketComponent(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 使用组件市场中的组件
    ///
    /// 从组件市场选中组件并添加到应用模板列表
    @inlinable @discardableResult
    public func applyMarketComponent(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyMarketComponentResponse {
        try await self.applyMarketComponent(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
