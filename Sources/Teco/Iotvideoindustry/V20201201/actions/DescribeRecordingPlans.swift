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
    /// 获取全部录制计划
    ///
    /// 本接口(DescribeRecordingPlans)用于获取用户的全部录制计划。
    @inlinable
    public func describeRecordingPlans(_ input: DescribeRecordingPlansRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRecordingPlansResponse > {
        self.client.execute(action: "DescribeRecordingPlans", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取全部录制计划
    ///
    /// 本接口(DescribeRecordingPlans)用于获取用户的全部录制计划。
    @inlinable
    public func describeRecordingPlans(_ input: DescribeRecordingPlansRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordingPlansResponse {
        try await self.client.execute(action: "DescribeRecordingPlans", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRecordingPlans请求参数结构体
    public struct DescribeRecordingPlansRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeRecordingPlans返回参数结构体
    public struct DescribeRecordingPlansResponse: TCResponseModel {
        /// 录制计划详情·列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plans: [RecordPlanDetail]?
        
        /// 录制计划总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case plans = "Plans"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}