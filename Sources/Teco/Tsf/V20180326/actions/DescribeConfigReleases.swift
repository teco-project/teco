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

import TecoCore
import TecoPaginationHelpers

extension Tsf {
    /// DescribeConfigReleases请求参数结构体
    public struct DescribeConfigReleasesRequest: TCPaginatedRequest {
        /// 配置项名称，不传入时查询全量
        public let configName: String?

        /// 部署组ID，不传入时查询全量
        public let groupId: String?

        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?

        /// 集群ID，不传入时查询全量
        public let clusterId: String?

        /// 每页条数
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 配置ID，不传入时查询全量
        public let configId: String?

        /// 应用ID，不传入时查询全量
        public let applicationId: String?

        public init(configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil, applicationId: String? = nil) {
            self.configName = configName
            self.groupId = groupId
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.configId = configId
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case configName = "ConfigName"
            case groupId = "GroupId"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case configId = "ConfigId"
            case applicationId = "ApplicationId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConfigReleasesResponse) -> DescribeConfigReleasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeConfigReleasesRequest(configName: self.configName, groupId: self.groupId, namespaceId: self.namespaceId, clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), configId: self.configId, applicationId: self.applicationId)
        }
    }

    /// DescribeConfigReleases返回参数结构体
    public struct DescribeConfigReleasesResponse: TCPaginatedResponse {
        /// 分页的配置发布信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfigRelease?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigRelease] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询配置发布信息
    @inlinable
    public func describeConfigReleases(_ input: DescribeConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigReleasesResponse> {
        self.client.execute(action: "DescribeConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置发布信息
    @inlinable
    public func describeConfigReleases(_ input: DescribeConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigReleasesResponse {
        try await self.client.execute(action: "DescribeConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置发布信息
    @inlinable
    public func describeConfigReleases(configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigReleasesResponse> {
        self.describeConfigReleases(.init(configName: configName, groupId: groupId, namespaceId: namespaceId, clusterId: clusterId, limit: limit, offset: offset, configId: configId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置发布信息
    @inlinable
    public func describeConfigReleases(configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigReleasesResponse {
        try await self.describeConfigReleases(.init(configName: configName, groupId: groupId, namespaceId: namespaceId, clusterId: clusterId, limit: limit, offset: offset, configId: configId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置发布信息
    @inlinable
    public func describeConfigReleasesPaginated(_ input: DescribeConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigRelease])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigReleases, logger: logger, on: eventLoop)
    }

    /// 查询配置发布信息
    @inlinable @discardableResult
    public func describeConfigReleasesPaginated(_ input: DescribeConfigReleasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigReleasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigReleases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询配置发布信息
    ///
    /// - Returns: `AsyncSequence`s of `ConfigRelease` and `DescribeConfigReleasesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigReleasesPaginator(_ input: DescribeConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigReleasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigReleases, logger: logger, on: eventLoop)
    }
}
