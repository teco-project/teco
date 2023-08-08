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
    public struct DescribeRecordBackupPlanRequest: TCRequestModel {
        /// 录像上云计划ID（从查询录像上云计划列表接口ListRecordBackupPlans中获取）
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// 查询录像上云计划返回数据
    public struct DescribeRecordBackupPlanResponse: TCResponseModel {
        /// 录像上云计划ID
        public let planId: String

        /// 录像上云计划名称
        public let planName: String

        /// 录像上云模板ID
        public let templateId: String

        /// 录像上云计划描述
        public let describe: String

        /// 云文件生命周期
        public let lifeCycle: LifeCycleData

        /// 录像上云计划状态，1:正常使用中，0:删除中，无法使用
        public let status: Int64

        /// 通道数量
        public let channelCount: Int64

        /// 创建时间
        public let createAt: String

        /// 修改时间
        public let updateAt: String

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case planName = "PlanName"
            case templateId = "TemplateId"
            case describe = "Describe"
            case lifeCycle = "LifeCycle"
            case status = "Status"
            case channelCount = "ChannelCount"
            case createAt = "CreateAt"
            case updateAt = "UpdateAt"
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