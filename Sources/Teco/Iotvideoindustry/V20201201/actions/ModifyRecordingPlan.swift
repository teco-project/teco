//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideoindustry {
    /// 更新录制计划
    ///
    /// 本接口(ModifyRecordingPlan)用于更新录制计划。
    @inlinable
    public func modifyRecordingPlan(_ input: ModifyRecordingPlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRecordingPlanResponse > {
        self.client.execute(action: "ModifyRecordingPlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新录制计划
    ///
    /// 本接口(ModifyRecordingPlan)用于更新录制计划。
    @inlinable
    public func modifyRecordingPlan(_ input: ModifyRecordingPlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordingPlanResponse {
        try await self.client.execute(action: "ModifyRecordingPlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyRecordingPlan请求参数结构体
    public struct ModifyRecordingPlanRequest: TCRequestModel {
        /// 录制计划ID
        public let planId: String
        
        /// 计划名称
        public let name: String?
        
        /// 时间模板ID
        public let timeTemplateId: String?
        
        public init (planId: String, name: String?, timeTemplateId: String?) {
            self.planId = planId
            self.name = name
            self.timeTemplateId = timeTemplateId
        }
        
        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case name = "Name"
            case timeTemplateId = "TimeTemplateId"
        }
    }
    
    /// ModifyRecordingPlan返回参数结构体
    public struct ModifyRecordingPlanResponse: TCResponseModel {
        /// 操作结果
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}