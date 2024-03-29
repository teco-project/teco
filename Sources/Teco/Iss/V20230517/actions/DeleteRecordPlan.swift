//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DeleteRecordPlan请求参数结构体
    public struct DeleteRecordPlanRequest: TCRequest {
        /// 上云计划ID
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// DeleteRecordPlan返回参数结构体
    public struct DeleteRecordPlanResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实时上云计划
    ///
    /// 用于删除实时上云计划
    @inlinable @discardableResult
    public func deleteRecordPlan(_ input: DeleteRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordPlanResponse> {
        self.client.execute(action: "DeleteRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实时上云计划
    ///
    /// 用于删除实时上云计划
    @inlinable @discardableResult
    public func deleteRecordPlan(_ input: DeleteRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordPlanResponse {
        try await self.client.execute(action: "DeleteRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实时上云计划
    ///
    /// 用于删除实时上云计划
    @inlinable @discardableResult
    public func deleteRecordPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordPlanResponse> {
        self.deleteRecordPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实时上云计划
    ///
    /// 用于删除实时上云计划
    @inlinable @discardableResult
    public func deleteRecordPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordPlanResponse {
        try await self.deleteRecordPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
