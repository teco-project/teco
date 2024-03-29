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

extension Eb {
    /// GetEventBus请求参数结构体
    public struct GetEventBusRequest: TCRequest {
        /// 事件集ID
        public let eventBusId: String

        public init(eventBusId: String) {
            self.eventBusId = eventBusId
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
        }
    }

    /// GetEventBus返回参数结构体
    public struct GetEventBusResponse: TCResponse {
        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$modTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modTime: Date

        /// 事件集描述
        public let description: String

        /// 日志主题ID
        public let clsTopicId: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$addTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var addTime: Date

        /// 日志集ID
        public let clsLogsetId: String

        /// 事件集名称
        public let eventBusName: String

        /// 事件集ID
        public let eventBusId: String

        /// （已废弃）事件集类型
        public let type: String

        /// 计费模式
        public let payMode: String

        /// EB日志存储时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let saveDays: Int64?

        /// EB日志主题ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logTopicId: String?

        /// 是否开启存储
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableStore: Bool?

        /// 消息序列，是否有序
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let linkMode: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modTime = "ModTime"
            case description = "Description"
            case clsTopicId = "ClsTopicId"
            case addTime = "AddTime"
            case clsLogsetId = "ClsLogsetId"
            case eventBusName = "EventBusName"
            case eventBusId = "EventBusId"
            case type = "Type"
            case payMode = "PayMode"
            case saveDays = "SaveDays"
            case logTopicId = "LogTopicId"
            case enableStore = "EnableStore"
            case linkMode = "LinkMode"
            case requestId = "RequestId"
        }
    }

    /// 获取事件集详情
    @inlinable
    public func getEventBus(_ input: GetEventBusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEventBusResponse> {
        self.client.execute(action: "GetEventBus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件集详情
    @inlinable
    public func getEventBus(_ input: GetEventBusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEventBusResponse {
        try await self.client.execute(action: "GetEventBus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件集详情
    @inlinable
    public func getEventBus(eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEventBusResponse> {
        self.getEventBus(.init(eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件集详情
    @inlinable
    public func getEventBus(eventBusId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEventBusResponse {
        try await self.getEventBus(.init(eventBusId: eventBusId), region: region, logger: logger, on: eventLoop)
    }
}
