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

extension Wedata {
    /// RegisterEvent请求参数结构体
    public struct RegisterEventRequest: TCRequest {
        /// 项目Id
        public let projectId: String

        /// 事件名称，支持英文、数字和下划线，最长20个字符, 不能以数字下划线开头。
        public let name: String

        /// 事件分割类型，周期类型: DAY，HOUR，MIN，SECOND
        public let eventSubType: String

        /// 广播：BROADCAST,单播：SINGLE
        public let eventBroadcastType: String

        /// 周期类型为天和小时为HOURS ，周期类型为分钟 ：MINUTES,周期类型为秒：SECONDS
        public let timeUnit: String

        /// TBDS 事件所属人
        public let owner: String

        /// 事件类型，默认值：TIME_SERIES
        public let eventType: String?

        /// 对应day： yyyyMMdd，对应HOUR：yyyyMMddHH，对应MIN：yyyyMMddHHmm，对应SECOND：yyyyMMddHHmmss
        public let dimensionFormat: String?

        /// 存活时间
        public let timeToLive: Int64?

        /// 事件描述
        public let description: String?

        public init(projectId: String, name: String, eventSubType: String, eventBroadcastType: String, timeUnit: String, owner: String, eventType: String? = nil, dimensionFormat: String? = nil, timeToLive: Int64? = nil, description: String? = nil) {
            self.projectId = projectId
            self.name = name
            self.eventSubType = eventSubType
            self.eventBroadcastType = eventBroadcastType
            self.timeUnit = timeUnit
            self.owner = owner
            self.eventType = eventType
            self.dimensionFormat = dimensionFormat
            self.timeToLive = timeToLive
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case name = "Name"
            case eventSubType = "EventSubType"
            case eventBroadcastType = "EventBroadcastType"
            case timeUnit = "TimeUnit"
            case owner = "Owner"
            case eventType = "EventType"
            case dimensionFormat = "DimensionFormat"
            case timeToLive = "TimeToLive"
            case description = "Description"
        }
    }

    /// RegisterEvent返回参数结构体
    public struct RegisterEventResponse: TCResponse {
        /// 成功或者失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BatchReturn?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 注册事件【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 注册事件
    @inlinable
    public func registerEvent(_ input: RegisterEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterEventResponse> {
        self.client.execute(action: "RegisterEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册事件【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 注册事件
    @inlinable
    public func registerEvent(_ input: RegisterEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterEventResponse {
        try await self.client.execute(action: "RegisterEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册事件【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 注册事件
    @inlinable
    public func registerEvent(projectId: String, name: String, eventSubType: String, eventBroadcastType: String, timeUnit: String, owner: String, eventType: String? = nil, dimensionFormat: String? = nil, timeToLive: Int64? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterEventResponse> {
        self.registerEvent(.init(projectId: projectId, name: name, eventSubType: eventSubType, eventBroadcastType: eventBroadcastType, timeUnit: timeUnit, owner: owner, eventType: eventType, dimensionFormat: dimensionFormat, timeToLive: timeToLive, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 注册事件【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 注册事件
    @inlinable
    public func registerEvent(projectId: String, name: String, eventSubType: String, eventBroadcastType: String, timeUnit: String, owner: String, eventType: String? = nil, dimensionFormat: String? = nil, timeToLive: Int64? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterEventResponse {
        try await self.registerEvent(.init(projectId: projectId, name: name, eventSubType: eventSubType, eventBroadcastType: eventBroadcastType, timeUnit: timeUnit, owner: owner, eventType: eventType, dimensionFormat: dimensionFormat, timeToLive: timeToLive, description: description), region: region, logger: logger, on: eventLoop)
    }
}
