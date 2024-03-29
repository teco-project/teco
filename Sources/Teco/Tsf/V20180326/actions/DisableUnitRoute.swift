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

extension Tsf {
    /// DisableUnitRoute请求参数结构体
    public struct DisableUnitRouteRequest: TCRequest {
        /// 网关实体ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DisableUnitRoute返回参数结构体
    public struct DisableUnitRouteResponse: TCResponse {
        /// 返回结果，成功失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 禁用单元化路由
    @inlinable
    public func disableUnitRoute(_ input: DisableUnitRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUnitRouteResponse> {
        self.client.execute(action: "DisableUnitRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用单元化路由
    @inlinable
    public func disableUnitRoute(_ input: DisableUnitRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUnitRouteResponse {
        try await self.client.execute(action: "DisableUnitRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用单元化路由
    @inlinable
    public func disableUnitRoute(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUnitRouteResponse> {
        self.disableUnitRoute(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用单元化路由
    @inlinable
    public func disableUnitRoute(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUnitRouteResponse {
        try await self.disableUnitRoute(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
