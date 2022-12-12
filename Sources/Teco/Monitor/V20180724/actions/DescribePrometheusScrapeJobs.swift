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

extension Monitor {
    /// DescribePrometheusScrapeJobs请求参数结构体
    public struct DescribePrometheusScrapeJobsRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// Agent ID
        public let agentId: String
        
        /// 任务名
        public let name: String?
        
        /// 任务 ID 列表
        public let jobIds: [String]?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?
        
        public init (instanceId: String, agentId: String, name: String? = nil, jobIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.agentId = agentId
            self.name = name
            self.jobIds = jobIds
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentId = "AgentId"
            case name = "Name"
            case jobIds = "JobIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribePrometheusScrapeJobs返回参数结构体
    public struct DescribePrometheusScrapeJobsResponse: TCResponseModel {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scrapeJobSet: [PrometheusScrapeJob]?
        
        /// 任务总量
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case scrapeJobSet = "ScrapeJobSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(_ input: DescribePrometheusScrapeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrometheusScrapeJobsResponse > {
        self.client.execute(action: "DescribePrometheusScrapeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(_ input: DescribePrometheusScrapeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusScrapeJobsResponse {
        try await self.client.execute(action: "DescribePrometheusScrapeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
