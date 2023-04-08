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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Teo {
    /// ModifyZoneStatus请求参数结构体
    public struct ModifyZoneStatusRequest: TCRequestModel {
        /// 站点 ID
        public let id: String

        /// 站点状态
        /// - false 开启站点
        /// - true 关闭站点
        public let paused: Bool

        public init(id: String, paused: Bool) {
            self.id = id
            self.paused = paused
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case paused = "Paused"
        }
    }

    /// ModifyZoneStatus返回参数结构体
    public struct ModifyZoneStatusResponse: TCResponseModel {
        /// 站点 ID
        public let id: String

        /// 站点名称
        public let name: String

        /// 站点状态
        /// - false 开启站点
        /// - true 关闭站点
        public let paused: Bool

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case paused = "Paused"
            case modifiedOn = "ModifiedOn"
            case requestId = "RequestId"
        }
    }

    /// 切换站点状态
    ///
    /// 用于开启，关闭站点
    @inlinable
    public func modifyZoneStatus(_ input: ModifyZoneStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneStatusResponse> {
        self.client.execute(action: "ModifyZoneStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换站点状态
    ///
    /// 用于开启，关闭站点
    @inlinable
    public func modifyZoneStatus(_ input: ModifyZoneStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneStatusResponse {
        try await self.client.execute(action: "ModifyZoneStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换站点状态
    ///
    /// 用于开启，关闭站点
    @inlinable
    public func modifyZoneStatus(id: String, paused: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneStatusResponse> {
        self.modifyZoneStatus(.init(id: id, paused: paused), region: region, logger: logger, on: eventLoop)
    }

    /// 切换站点状态
    ///
    /// 用于开启，关闭站点
    @inlinable
    public func modifyZoneStatus(id: String, paused: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneStatusResponse {
        try await self.modifyZoneStatus(.init(id: id, paused: paused), region: region, logger: logger, on: eventLoop)
    }
}
