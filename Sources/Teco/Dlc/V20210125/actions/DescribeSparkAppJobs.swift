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

extension Dlc {
    /// DescribeSparkAppJobs请求参数结构体
    public struct DescribeSparkAppJobsRequest: TCRequestModel {
        /// 返回结果按照该字段排序
        public let sortBy: String?
        
        /// 正序或者倒序，例如：desc
        public let sorting: String?
        
        /// 按照该参数过滤,支持spark-job-name
        public let filters: [Filter]?
        
        /// 更新时间起始点
        public let startTime: String?
        
        /// 更新时间截止点
        public let endTime: String?
        
        /// 查询列表偏移量
        public let offset: Int64?
        
        /// 查询列表限制数量
        public let limit: Int64?
        
        public init (sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.sortBy = sortBy
            self.sorting = sorting
            self.filters = filters
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case filters = "Filters"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeSparkAppJobs返回参数结构体
    public struct DescribeSparkAppJobsResponse: TCResponseModel {
        /// spark作业列表详情
        public let sparkAppJobs: [SparkJobInfo]
        
        /// spark作业总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sparkAppJobs = "SparkAppJobs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取spark应用列表
    @inlinable
    public func describeSparkAppJobs(_ input: DescribeSparkAppJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSparkAppJobsResponse > {
        self.client.execute(action: "DescribeSparkAppJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取spark应用列表
    @inlinable
    public func describeSparkAppJobs(_ input: DescribeSparkAppJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppJobsResponse {
        try await self.client.execute(action: "DescribeSparkAppJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
