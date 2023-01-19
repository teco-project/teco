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
    /// GetRecordPlanById请求参数结构体
    public struct GetRecordPlanByIdRequest: TCRequestModel {
        /// 录制计划ID
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// GetRecordPlanById返回参数结构体
    public struct GetRecordPlanByIdResponse: TCResponseModel {
        /// 录制计划详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plan: RecordPlanItem?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case plan = "Plan"
            case requestId = "RequestId"
        }
    }

    /// 获取录制计划（旧）
    ///
    /// 本接口(GetRecordPlanById)用于根据录制计划ID获取录制计划。
    /// 请使用DescribeRecordingPlanById接口
    @inlinable
    public func getRecordPlanById(_ input: GetRecordPlanByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordPlanByIdResponse> {
        self.client.execute(action: "GetRecordPlanById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取录制计划（旧）
    ///
    /// 本接口(GetRecordPlanById)用于根据录制计划ID获取录制计划。
    /// 请使用DescribeRecordingPlanById接口
    @inlinable
    public func getRecordPlanById(_ input: GetRecordPlanByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordPlanByIdResponse {
        try await self.client.execute(action: "GetRecordPlanById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取录制计划（旧）
    ///
    /// 本接口(GetRecordPlanById)用于根据录制计划ID获取录制计划。
    /// 请使用DescribeRecordingPlanById接口
    @inlinable
    public func getRecordPlanById(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordPlanByIdResponse> {
        self.getRecordPlanById(GetRecordPlanByIdRequest(planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取录制计划（旧）
    ///
    /// 本接口(GetRecordPlanById)用于根据录制计划ID获取录制计划。
    /// 请使用DescribeRecordingPlanById接口
    @inlinable
    public func getRecordPlanById(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordPlanByIdResponse {
        try await self.getRecordPlanById(GetRecordPlanByIdRequest(planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
