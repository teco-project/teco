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

extension Eb {
    /// UpdateTarget请求参数结构体
    public struct UpdateTargetRequest: TCRequest {
        /// 事件集ID
        public let eventBusId: String

        /// 事件规则ID
        public let ruleId: String

        /// 事件目标ID
        public let targetId: String

        /// 开启批量投递使能
        public let enableBatchDelivery: Bool?

        /// 批量投递最长等待时间
        public let batchTimeout: Int64?

        /// 批量投递最大事件条数
        public let batchEventCount: Int64?

        public init(eventBusId: String, ruleId: String, targetId: String, enableBatchDelivery: Bool? = nil, batchTimeout: Int64? = nil, batchEventCount: Int64? = nil) {
            self.eventBusId = eventBusId
            self.ruleId = ruleId
            self.targetId = targetId
            self.enableBatchDelivery = enableBatchDelivery
            self.batchTimeout = batchTimeout
            self.batchEventCount = batchEventCount
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
            case targetId = "TargetId"
            case enableBatchDelivery = "EnableBatchDelivery"
            case batchTimeout = "BatchTimeout"
            case batchEventCount = "BatchEventCount"
        }
    }

    /// UpdateTarget返回参数结构体
    public struct UpdateTargetResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新事件目标
    @inlinable @discardableResult
    public func updateTarget(_ input: UpdateTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTargetResponse> {
        self.client.execute(action: "UpdateTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新事件目标
    @inlinable @discardableResult
    public func updateTarget(_ input: UpdateTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTargetResponse {
        try await self.client.execute(action: "UpdateTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新事件目标
    @inlinable @discardableResult
    public func updateTarget(eventBusId: String, ruleId: String, targetId: String, enableBatchDelivery: Bool? = nil, batchTimeout: Int64? = nil, batchEventCount: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTargetResponse> {
        self.updateTarget(.init(eventBusId: eventBusId, ruleId: ruleId, targetId: targetId, enableBatchDelivery: enableBatchDelivery, batchTimeout: batchTimeout, batchEventCount: batchEventCount), region: region, logger: logger, on: eventLoop)
    }

    /// 更新事件目标
    @inlinable @discardableResult
    public func updateTarget(eventBusId: String, ruleId: String, targetId: String, enableBatchDelivery: Bool? = nil, batchTimeout: Int64? = nil, batchEventCount: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTargetResponse {
        try await self.updateTarget(.init(eventBusId: eventBusId, ruleId: ruleId, targetId: targetId, enableBatchDelivery: enableBatchDelivery, batchTimeout: batchTimeout, batchEventCount: batchEventCount), region: region, logger: logger, on: eventLoop)
    }
}
