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

@_exported import struct Foundation.Date

extension Pts {
    /// DescribeJobs请求参数结构体
    public struct DescribeJobsRequest: TCRequestModel {
        /// 场景ID数组
        public let scenarioIds: [String]
        
        /// 项目ID数组
        public let projectIds: [String]
        
        /// 分页起始位置
        public let offset: Int64?
        
        /// 每页最大数目
        public let limit: Int64?
        
        /// 任务ID数组
        public let jobIds: [String]?
        
        /// 按字段排序
        public let orderBy: String?
        
        /// 升序/降序
        public let ascend: Bool?
        
        /// 任务开始时间
        public let startTime: Date?
        
        /// 任务结束时间
        public let endTime: Date?
        
        /// 调试任务标记
        public let debug: Bool?
        
        /// 任务的状态
        public let status: [Int64]?
        
        public init (scenarioIds: [String], projectIds: [String], offset: Int64? = nil, limit: Int64? = nil, jobIds: [String]? = nil, orderBy: String? = nil, ascend: Bool? = nil, startTime: Date? = nil, endTime: Date? = nil, debug: Bool? = nil, status: [Int64]? = nil) {
            self.scenarioIds = scenarioIds
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.jobIds = jobIds
            self.orderBy = orderBy
            self.ascend = ascend
            self.startTime = startTime
            self.endTime = endTime
            self.debug = debug
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case scenarioIds = "ScenarioIds"
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case jobIds = "JobIds"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case debug = "Debug"
            case status = "Status"
        }
    }
    
    /// DescribeJobs返回参数结构体
    public struct DescribeJobsResponse: TCResponseModel {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobSet: [Job]?
        
        /// 任务数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobSet = "JobSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 查询任务列表
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeJobsResponse > {
        self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务列表
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        try await self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
