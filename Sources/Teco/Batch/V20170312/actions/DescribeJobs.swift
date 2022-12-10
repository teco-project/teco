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

extension Batch {
    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeJobsResponse > {
        self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        try await self.client.execute(action: "DescribeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeJobs请求参数结构体
    public struct DescribeJobsRequest: TCRequestModel {
        /// 作业ID列表，与Filters参数不能同时指定。
        public let jobIds: [String]?
        
        /// 过滤条件
        /// <li> job-id - String - 是否必填：否 -（过滤条件）按照作业ID过滤。</li>
        /// <li> job-name - String - 是否必填：否 -（过滤条件）按照作业名称过滤。</li>
        /// <li> job-state - String - 是否必填：否 -（过滤条件）按照作业状态过滤。</li>
        /// <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        /// 与JobIds参数不能同时指定。
        public let filters: [Filter]?
        
        /// 偏移量
        public let offset: Int64?
        
        /// 返回数量
        public let limit: Int64?
        
        public init (jobIds: [String]?, filters: [Filter]?, offset: Int64?, limit: Int64?) {
            self.jobIds = jobIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeJobs返回参数结构体
    public struct DescribeJobsResponse: TCResponseModel {
        /// 作业列表
        public let jobSet: [JobView]
        
        /// 符合条件的作业数量
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobSet = "JobSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
