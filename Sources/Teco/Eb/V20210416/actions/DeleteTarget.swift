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

extension Eb {
    /// DeleteTarget请求参数结构体
    public struct DeleteTargetRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 事件目标ID
        public let targetId: String

        /// 事件规则ID
        public let ruleId: String

        public init(eventBusId: String, targetId: String, ruleId: String) {
            self.eventBusId = eventBusId
            self.targetId = targetId
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case targetId = "TargetId"
            case ruleId = "RuleId"
        }
    }

    /// DeleteTarget返回参数结构体
    public struct DeleteTargetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除事件目标
    @inlinable @discardableResult
    public func deleteTarget(_ input: DeleteTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTargetResponse> {
        self.client.execute(action: "DeleteTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除事件目标
    @inlinable @discardableResult
    public func deleteTarget(_ input: DeleteTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTargetResponse {
        try await self.client.execute(action: "DeleteTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除事件目标
    @inlinable @discardableResult
    public func deleteTarget(eventBusId: String, targetId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTargetResponse> {
        self.deleteTarget(.init(eventBusId: eventBusId, targetId: targetId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除事件目标
    @inlinable @discardableResult
    public func deleteTarget(eventBusId: String, targetId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTargetResponse {
        try await self.deleteTarget(.init(eventBusId: eventBusId, targetId: targetId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
