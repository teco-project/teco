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

extension Dts {
    /// 查询同步校验任务结果
    @inlinable
    public func describeCheckSyncJobResult(_ input: DescribeCheckSyncJobResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCheckSyncJobResultResponse > {
        self.client.execute(action: "DescribeCheckSyncJobResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询同步校验任务结果
    @inlinable
    public func describeCheckSyncJobResult(_ input: DescribeCheckSyncJobResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCheckSyncJobResultResponse {
        try await self.client.execute(action: "DescribeCheckSyncJobResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCheckSyncJobResult请求参数结构体
    public struct DescribeCheckSyncJobResultRequest: TCRequestModel {
        /// 同步任务id
        public let jobId: String?
        
        public init (jobId: String?) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// DescribeCheckSyncJobResult返回参数结构体
    public struct DescribeCheckSyncJobResultResponse: TCResponseModel {
        /// 校验结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?
        
        /// 步骤总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stepCount: UInt64?
        
        /// 当前所在步骤
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stepCur: UInt64?
        
        /// 总体进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: UInt64?
        
        /// 步骤信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stepInfos: [StepInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case stepCount = "StepCount"
            case stepCur = "StepCur"
            case progress = "Progress"
            case stepInfos = "StepInfos"
            case requestId = "RequestId"
        }
    }
}
