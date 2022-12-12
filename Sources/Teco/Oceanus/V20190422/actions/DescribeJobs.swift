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

extension Oceanus {
    /// DescribeJobs请求参数结构体
    public struct DescribeJobsRequest: TCRequestModel {
        /// 按照一个或者多个作业ID查询。作业ID形如：cql-11112222，每次请求的作业上限为100。参数不支持同时指定JobIds和Filters。
        public let jobIds: [String]?
        
        /// 过滤条件，支持的 Filter.Name 为：作业名 Name、作业状态 Status、所属集群 ClusterId、作业id JobId、集群名称 ClusterName。 每次请求的 Filters 个数的上限为 5，Filter.Values 的个数上限为 5。参数不支持同时指定 JobIds 和 Filters。
        public let filters: [Filter]?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 分页大小，默认为20，最大值为100
        public let limit: Int64?
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (jobIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, workSpaceId: String? = nil) {
            self.jobIds = jobIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// DescribeJobs返回参数结构体
    public struct DescribeJobsResponse: TCResponseModel {
        /// 作业总数
        public let totalCount: Int64
        
        /// 作业列表
        public let jobSet: [JobV1]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case jobSet = "JobSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询作业
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeJobsResponse > {
        self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询作业
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        try await self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
