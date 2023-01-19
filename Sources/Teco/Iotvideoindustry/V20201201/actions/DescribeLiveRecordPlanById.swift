//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotvideoindustry {
    /// DescribeLiveRecordPlanById请求参数结构体
    public struct DescribeLiveRecordPlanByIdRequest: TCRequestModel {
        /// 录制计划ID
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// DescribeLiveRecordPlanById返回参数结构体
    public struct DescribeLiveRecordPlanByIdResponse: TCResponseModel {
        /// 计划名称
        public let planName: String

        /// 模板ID
        public let templateId: String

        /// 模板名称
        public let templateName: String

        /// 存储时间
        public let recordStorageTime: Int64

        /// 计划类型
        public let planType: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case planName = "PlanName"
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case recordStorageTime = "RecordStorageTime"
            case planType = "PlanType"
            case requestId = "RequestId"
        }
    }

    /// 获取直播录制计划详情
    @inlinable
    public func describeLiveRecordPlanById(_ input: DescribeLiveRecordPlanByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordPlanByIdResponse> {
        self.client.execute(action: "DescribeLiveRecordPlanById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划详情
    @inlinable
    public func describeLiveRecordPlanById(_ input: DescribeLiveRecordPlanByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordPlanByIdResponse {
        try await self.client.execute(action: "DescribeLiveRecordPlanById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播录制计划详情
    @inlinable
    public func describeLiveRecordPlanById(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordPlanByIdResponse> {
        self.describeLiveRecordPlanById(DescribeLiveRecordPlanByIdRequest(planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划详情
    @inlinable
    public func describeLiveRecordPlanById(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordPlanByIdResponse {
        try await self.describeLiveRecordPlanById(DescribeLiveRecordPlanByIdRequest(planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
