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

extension Tcss {
    /// 运行时查询文件查杀任务状态
    @inlinable
    public func describeVirusScanTaskStatus(_ input: DescribeVirusScanTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVirusScanTaskStatusResponse > {
        self.client.execute(action: "DescribeVirusScanTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时查询文件查杀任务状态
    @inlinable
    public func describeVirusScanTaskStatus(_ input: DescribeVirusScanTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusScanTaskStatusResponse {
        try await self.client.execute(action: "DescribeVirusScanTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVirusScanTaskStatus请求参数结构体
    public struct DescribeVirusScanTaskStatusRequest: TCRequestModel {
        /// 任务id
        public let taskID: String?
        
        public init (taskID: String?) {
            self.taskID = taskID
        }
        
        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }
    
    /// DescribeVirusScanTaskStatus返回参数结构体
    public struct DescribeVirusScanTaskStatusResponse: TCResponseModel {
        /// 查杀容器个数
        public let containerTotal: UInt64
        
        /// 风险容器个数
        public let riskContainerCnt: UInt64
        
        /// 扫描状态 任务状态:
        /// SCAN_NONE:无， 
        /// SCAN_SCANNING:正在扫描中，
        /// SCAN_FINISH：扫描完成， 
        /// SCAN_TIMEOUT：扫描超时
        /// SCAN_CANCELING: 取消中
        /// SCAN_CANCELED:已取消
        public let status: String
        
        /// 扫描进度 I
        public let schedule: UInt64
        
        /// 已经扫描了的容器个数
        public let containerScanCnt: UInt64
        
        /// 风险个数
        public let riskCnt: UInt64
        
        /// 剩余扫描时间
        public let leftSeconds: UInt64
        
        /// 扫描开始时间
        public let startTime: String
        
        /// 扫描结束时间
        public let endTime: String
        
        /// 扫描类型，"CYCLE"：周期扫描， "MANUAL"：手动扫描
        public let scanType: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case containerTotal = "ContainerTotal"
            case riskContainerCnt = "RiskContainerCnt"
            case status = "Status"
            case schedule = "Schedule"
            case containerScanCnt = "ContainerScanCnt"
            case riskCnt = "RiskCnt"
            case leftSeconds = "LeftSeconds"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case scanType = "ScanType"
            case requestId = "RequestId"
        }
    }
}
