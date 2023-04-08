//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoPaginationHelpers

extension Oceanus {
    /// DescribeResourceRelatedJobs请求参数结构体
    public struct DescribeResourceRelatedJobsRequest: TCPaginatedRequest {
        /// 资源ID
        public let resourceId: String

        /// 默认0;   1： 按照作业版本创建时间降序
        public let descByJobConfigCreateTime: Int64?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 分页大小，默认为20，最大值为100
        public let limit: Int64?

        /// 资源版本号
        public let resourceConfigVersion: Int64?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(resourceId: String, descByJobConfigCreateTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersion: Int64? = nil, workSpaceId: String? = nil) {
            self.resourceId = resourceId
            self.descByJobConfigCreateTime = descByJobConfigCreateTime
            self.offset = offset
            self.limit = limit
            self.resourceConfigVersion = resourceConfigVersion
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case descByJobConfigCreateTime = "DESCByJobConfigCreateTime"
            case offset = "Offset"
            case limit = "Limit"
            case resourceConfigVersion = "ResourceConfigVersion"
            case workSpaceId = "WorkSpaceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourceRelatedJobsResponse) -> DescribeResourceRelatedJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourceRelatedJobsRequest(resourceId: self.resourceId, descByJobConfigCreateTime: self.descByJobConfigCreateTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, resourceConfigVersion: self.resourceConfigVersion, workSpaceId: self.workSpaceId)
        }
    }

    /// DescribeResourceRelatedJobs返回参数结构体
    public struct DescribeResourceRelatedJobsResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: Int64

        /// 关联作业信息
        public let refJobInfos: [ResourceRefJobInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case refJobInfos = "RefJobInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ResourceRefJobInfo] {
            self.refJobInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取资源关联作业信息
    @inlinable
    public func describeResourceRelatedJobs(_ input: DescribeResourceRelatedJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceRelatedJobsResponse> {
        self.client.execute(action: "DescribeResourceRelatedJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源关联作业信息
    @inlinable
    public func describeResourceRelatedJobs(_ input: DescribeResourceRelatedJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceRelatedJobsResponse {
        try await self.client.execute(action: "DescribeResourceRelatedJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源关联作业信息
    @inlinable
    public func describeResourceRelatedJobs(resourceId: String, descByJobConfigCreateTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersion: Int64? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceRelatedJobsResponse> {
        self.describeResourceRelatedJobs(.init(resourceId: resourceId, descByJobConfigCreateTime: descByJobConfigCreateTime, offset: offset, limit: limit, resourceConfigVersion: resourceConfigVersion, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源关联作业信息
    @inlinable
    public func describeResourceRelatedJobs(resourceId: String, descByJobConfigCreateTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersion: Int64? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceRelatedJobsResponse {
        try await self.describeResourceRelatedJobs(.init(resourceId: resourceId, descByJobConfigCreateTime: descByJobConfigCreateTime, offset: offset, limit: limit, resourceConfigVersion: resourceConfigVersion, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源关联作业信息
    @inlinable
    public func describeResourceRelatedJobsPaginated(_ input: DescribeResourceRelatedJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResourceRefJobInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceRelatedJobs, logger: logger, on: eventLoop)
    }

    /// 获取资源关联作业信息
    @inlinable @discardableResult
    public func describeResourceRelatedJobsPaginated(_ input: DescribeResourceRelatedJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceRelatedJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceRelatedJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资源关联作业信息
    ///
    /// - Returns: `AsyncSequence`s of `ResourceRefJobInfo` and `DescribeResourceRelatedJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceRelatedJobsPaginator(_ input: DescribeResourceRelatedJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceRelatedJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceRelatedJobs, logger: logger, on: eventLoop)
    }
}
