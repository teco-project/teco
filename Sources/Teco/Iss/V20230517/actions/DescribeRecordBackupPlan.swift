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
    /// DescribeRecordBackupPlan请求参数结构体
    public struct DescribeRecordBackupPlanRequest: TCRequest {
        /// 录像上云计划ID（从查询录像上云计划列表接口ListRecordBackupPlans中获取）
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// DescribeRecordBackupPlan返回参数结构体
    public struct DescribeRecordBackupPlanResponse: TCResponse {
        /// 返回数据
        public let data: DescribeRecordBackupPlanData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询录像上云计划详情
    ///
    /// 用于查询录像上云计划详情。
    @inlinable
    public func describeRecordBackupPlan(_ input: DescribeRecordBackupPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordBackupPlanResponse> {
        self.client.execute(action: "DescribeRecordBackupPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录像上云计划详情
    ///
    /// 用于查询录像上云计划详情。
    @inlinable
    public func describeRecordBackupPlan(_ input: DescribeRecordBackupPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordBackupPlanResponse {
        try await self.client.execute(action: "DescribeRecordBackupPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录像上云计划详情
    ///
    /// 用于查询录像上云计划详情。
    @inlinable
    public func describeRecordBackupPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordBackupPlanResponse> {
        self.describeRecordBackupPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录像上云计划详情
    ///
    /// 用于查询录像上云计划详情。
    @inlinable
    public func describeRecordBackupPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordBackupPlanResponse {
        try await self.describeRecordBackupPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
