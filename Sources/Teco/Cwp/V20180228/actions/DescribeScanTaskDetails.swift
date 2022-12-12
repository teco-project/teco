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
    /// DescribeScanTaskDetails请求参数结构体
    public struct DescribeScanTaskDetailsRequest: TCRequestModel {
        /// 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        public let moduleType: String
        
        /// 任务ID
        public let taskId: UInt64
        
        /// 过滤参数
        public let filters: [Filters]?
        
        /// 需要返回的数量，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        public init (moduleType: String, taskId: UInt64, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.moduleType = moduleType
            self.taskId = taskId
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case moduleType = "ModuleType"
            case taskId = "TaskId"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeScanTaskDetails返回参数结构体
    public struct DescribeScanTaskDetailsResponse: TCResponseModel {
        /// 扫描任务信息列表
        public let scanTaskDetailList: [ScanTaskDetails]
        
        /// 总数
        public let totalCount: UInt64
        
        /// 扫描机器总数
        public let scanMachineCount: UInt64
        
        /// 发现风险机器数
        public let riskMachineCount: UInt64
        
        /// 扫描开始时间
        public let scanBeginTime: String
        
        /// 扫描结束时间
        public let scanEndTime: String
        
        /// 检测时间
        public let scanTime: UInt64
        
        /// 扫描进度
        public let scanProgress: UInt64
        
        /// 扫描剩余时间
        public let scanLeftTime: UInt64
        
        /// 扫描内容
        public let scanContent: [String]
        
        /// 漏洞信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulInfo: [VulDetailInfo]?
        
        /// 风险事件个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskEventCount: UInt64?
        
        /// 0一键检测 1定时检测
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: UInt64?
        
        /// 任务是否全部正在被停止 ture是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stoppingAll: Bool?
        
        /// 扫描出漏洞个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case scanTaskDetailList = "ScanTaskDetailList"
            case totalCount = "TotalCount"
            case scanMachineCount = "ScanMachineCount"
            case riskMachineCount = "RiskMachineCount"
            case scanBeginTime = "ScanBeginTime"
            case scanEndTime = "ScanEndTime"
            case scanTime = "ScanTime"
            case scanProgress = "ScanProgress"
            case scanLeftTime = "ScanLeftTime"
            case scanContent = "ScanContent"
            case vulInfo = "VulInfo"
            case riskEventCount = "RiskEventCount"
            case type = "Type"
            case stoppingAll = "StoppingAll"
            case vulCount = "VulCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询扫描任务详情
    ///
    /// DescribeScanTaskDetails 查询扫描任务详情 , 可以查询扫描进度信息/异常;
    @inlinable
    public func describeScanTaskDetails(_ input: DescribeScanTaskDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScanTaskDetailsResponse > {
        self.client.execute(action: "DescribeScanTaskDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询扫描任务详情
    ///
    /// DescribeScanTaskDetails 查询扫描任务详情 , 可以查询扫描进度信息/异常;
    @inlinable
    public func describeScanTaskDetails(_ input: DescribeScanTaskDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanTaskDetailsResponse {
        try await self.client.execute(action: "DescribeScanTaskDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
