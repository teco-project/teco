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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tsf {
    /// DescribeFileConfigReleases请求参数结构体
    public struct DescribeFileConfigReleasesRequest: TCPaginatedRequest {
        /// 配置项ID
        public let configId: String?

        /// 配置项名称
        public let configName: String?

        /// 部署组ID
        public let groupId: String?

        /// 命名空间ID
        public let namespaceId: String?

        /// 集群ID
        public let clusterId: String?

        /// 应用ID
        public let applicationId: String?

        /// 偏移量
        public let offset: Int64?

        /// 每页条数
        public let limit: Int64?

        public init(configId: String? = nil, configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.configId = configId
            self.configName = configName
            self.groupId = groupId
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.applicationId = applicationId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case configName = "ConfigName"
            case groupId = "GroupId"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case applicationId = "ApplicationId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFileConfigReleasesResponse) -> DescribeFileConfigReleasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFileConfigReleasesRequest(configId: self.configId, configName: self.configName, groupId: self.groupId, namespaceId: self.namespaceId, clusterId: self.clusterId, applicationId: self.applicationId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeFileConfigReleases返回参数结构体
    public struct DescribeFileConfigReleasesResponse: TCPaginatedResponse {
        /// 配置项发布信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageFileConfigRelease?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FileConfigRelease] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询文件配置项发布信息
    @inlinable
    public func describeFileConfigReleases(_ input: DescribeFileConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileConfigReleasesResponse> {
        self.client.execute(action: "DescribeFileConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项发布信息
    @inlinable
    public func describeFileConfigReleases(_ input: DescribeFileConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileConfigReleasesResponse {
        try await self.client.execute(action: "DescribeFileConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件配置项发布信息
    @inlinable
    public func describeFileConfigReleases(configId: String? = nil, configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileConfigReleasesResponse> {
        self.describeFileConfigReleases(.init(configId: configId, configName: configName, groupId: groupId, namespaceId: namespaceId, clusterId: clusterId, applicationId: applicationId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项发布信息
    @inlinable
    public func describeFileConfigReleases(configId: String? = nil, configName: String? = nil, groupId: String? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileConfigReleasesResponse {
        try await self.describeFileConfigReleases(.init(configId: configId, configName: configName, groupId: groupId, namespaceId: namespaceId, clusterId: clusterId, applicationId: applicationId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项发布信息
    @inlinable
    public func describeFileConfigReleasesPaginated(_ input: DescribeFileConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FileConfigRelease])> {
        self.client.paginate(input: input, region: region, command: self.describeFileConfigReleases, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项发布信息
    @inlinable @discardableResult
    public func describeFileConfigReleasesPaginated(_ input: DescribeFileConfigReleasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFileConfigReleasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFileConfigReleases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项发布信息
    ///
    /// - Returns: `AsyncSequence`s of `FileConfigRelease` and `DescribeFileConfigReleasesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFileConfigReleasesPaginator(_ input: DescribeFileConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFileConfigReleasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFileConfigReleases, logger: logger, on: eventLoop)
    }
}
