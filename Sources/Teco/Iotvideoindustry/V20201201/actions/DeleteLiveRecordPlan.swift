//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 删除直播录制计划
    @inlinable
    public func deleteLiveRecordPlan(_ input: DeleteLiveRecordPlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveRecordPlanResponse > {
        self.client.execute(action: "DeleteLiveRecordPlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除直播录制计划
    @inlinable
    public func deleteLiveRecordPlan(_ input: DeleteLiveRecordPlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveRecordPlanResponse {
        try await self.client.execute(action: "DeleteLiveRecordPlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLiveRecordPlan请求参数结构体
    public struct DeleteLiveRecordPlanRequest: TCRequestModel {
        /// 录制计划ID
        public let planId: String
        
        public init (planId: String) {
            self.planId = planId
        }
        
        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }
    
    /// DeleteLiveRecordPlan返回参数结构体
    public struct DeleteLiveRecordPlanResponse: TCResponseModel {
        /// 删除状态描述
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}
