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

extension Cwp {
    /// SyncBaselineDetectSummary请求参数结构体
    public struct SyncBaselineDetectSummaryRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// SyncBaselineDetectSummary返回参数结构体
    public struct SyncBaselineDetectSummaryResponse: TCResponseModel {
        /// 处理进度
        public let progressRate: Int64
        
        /// 未通过策略总数
        public let notPassPolicyCount: Int64
        
        /// 主机总数
        public let hostCount: Int64
        
        /// 开始时间
        public let startTime: String
        
        /// 结束时间
        public let endTime: String
        
        /// 1:即将进行首次扫描   0:已经扫描过了
        public let willFirstScan: Int64
        
        /// 正在检测的任务ID
        public let detectingTaskIds: [Int64]
        
        /// 扫描中剩余时间(分钟)
        public let leftMins: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case progressRate = "ProgressRate"
            case notPassPolicyCount = "NotPassPolicyCount"
            case hostCount = "HostCount"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case willFirstScan = "WillFirstScan"
            case detectingTaskIds = "DetectingTaskIds"
            case leftMins = "LeftMins"
            case requestId = "RequestId"
        }
    }
    
    /// 同步基线检测进度概要
    @inlinable
    public func syncBaselineDetectSummary(_ input: SyncBaselineDetectSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SyncBaselineDetectSummaryResponse > {
        self.client.execute(action: "SyncBaselineDetectSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 同步基线检测进度概要
    @inlinable
    public func syncBaselineDetectSummary(_ input: SyncBaselineDetectSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncBaselineDetectSummaryResponse {
        try await self.client.execute(action: "SyncBaselineDetectSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
