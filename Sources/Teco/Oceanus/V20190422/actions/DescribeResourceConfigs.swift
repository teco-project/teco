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

import Logging
import NIOCore
import TecoCore

extension Oceanus {
    /// DescribeResourceConfigs请求参数结构体
    public struct DescribeResourceConfigsRequest: TCPaginatedRequest {
        /// 资源ID
        public let resourceId: String?

        /// 偏移量，仅当设置 Limit 时该参数有效
        public let offset: Int64?

        /// 返回值大小，不填则返回全量数据
        public let limit: Int64?

        /// 资源配置Versions集合
        public let resourceConfigVersions: [Int64]?

        /// 作业配置版本
        public let jobConfigVersion: Int64?

        /// 作业ID
        public let jobId: String?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(resourceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersions: [Int64]? = nil, jobConfigVersion: Int64? = nil, jobId: String? = nil, workSpaceId: String? = nil) {
            self.resourceId = resourceId
            self.offset = offset
            self.limit = limit
            self.resourceConfigVersions = resourceConfigVersions
            self.jobConfigVersion = jobConfigVersion
            self.jobId = jobId
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case offset = "Offset"
            case limit = "Limit"
            case resourceConfigVersions = "ResourceConfigVersions"
            case jobConfigVersion = "JobConfigVersion"
            case jobId = "JobId"
            case workSpaceId = "WorkSpaceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourceConfigsResponse) -> DescribeResourceConfigsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(resourceId: self.resourceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, resourceConfigVersions: self.resourceConfigVersions, jobConfigVersion: self.jobConfigVersion, jobId: self.jobId, workSpaceId: self.workSpaceId)
        }
    }

    /// DescribeResourceConfigs返回参数结构体
    public struct DescribeResourceConfigsResponse: TCPaginatedResponse {
        /// 资源配置描述数组
        public let resourceConfigSet: [ResourceConfigItem]

        /// 资源配置数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resourceConfigSet = "ResourceConfigSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ResourceConfigItem`` list from the paginated response.
        public func getItems() -> [ResourceConfigItem] {
            self.resourceConfigSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(_ input: DescribeResourceConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceConfigsResponse> {
        self.client.execute(action: "DescribeResourceConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(_ input: DescribeResourceConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceConfigsResponse {
        try await self.client.execute(action: "DescribeResourceConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(resourceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersions: [Int64]? = nil, jobConfigVersion: Int64? = nil, jobId: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceConfigsResponse> {
        self.describeResourceConfigs(.init(resourceId: resourceId, offset: offset, limit: limit, resourceConfigVersions: resourceConfigVersions, jobConfigVersion: jobConfigVersion, jobId: jobId, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(resourceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceConfigVersions: [Int64]? = nil, jobConfigVersion: Int64? = nil, jobId: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceConfigsResponse {
        try await self.describeResourceConfigs(.init(resourceId: resourceId, offset: offset, limit: limit, resourceConfigVersions: resourceConfigVersions, jobConfigVersion: jobConfigVersion, jobId: jobId, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigsPaginated(_ input: DescribeResourceConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResourceConfigItem])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceConfigs, logger: logger, on: eventLoop)
    }

    /// 描述资源配置接口
    @inlinable @discardableResult
    public func describeResourceConfigsPaginated(_ input: DescribeResourceConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 描述资源配置接口
    ///
    /// - Returns: `AsyncSequence`s of ``ResourceConfigItem`` and ``DescribeResourceConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceConfigsPaginator(_ input: DescribeResourceConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceConfigs, logger: logger, on: eventLoop)
    }
}
