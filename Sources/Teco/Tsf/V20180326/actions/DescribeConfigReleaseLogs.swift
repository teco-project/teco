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
import TecoPaginationHelpers

extension Tsf {
    /// DescribeConfigReleaseLogs请求参数结构体
    public struct DescribeConfigReleaseLogsRequest: TCPaginatedRequest {
        /// 部署组ID，不传入时查询全量
        public let groupId: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 每页条数，默认为20
        public let limit: Int64?

        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?

        /// 集群ID，不传入时查询全量
        public let clusterId: String?

        /// 应用ID，不传入时查询全量
        public let applicationId: String?

        public init(groupId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case applicationId = "ApplicationId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConfigReleaseLogsResponse) -> DescribeConfigReleaseLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeConfigReleaseLogsRequest(groupId: self.groupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, namespaceId: self.namespaceId, clusterId: self.clusterId, applicationId: self.applicationId)
        }
    }

    /// DescribeConfigReleaseLogs返回参数结构体
    public struct DescribeConfigReleaseLogsResponse: TCPaginatedResponse {
        /// 分页的配置项发布历史列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfigReleaseLog?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigReleaseLog] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(_ input: DescribeConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigReleaseLogsResponse> {
        self.client.execute(action: "DescribeConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(_ input: DescribeConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigReleaseLogsResponse {
        try await self.client.execute(action: "DescribeConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(groupId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigReleaseLogsResponse> {
        self.describeConfigReleaseLogs(.init(groupId: groupId, offset: offset, limit: limit, namespaceId: namespaceId, clusterId: clusterId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(groupId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigReleaseLogsResponse {
        try await self.describeConfigReleaseLogs(.init(groupId: groupId, offset: offset, limit: limit, namespaceId: namespaceId, clusterId: clusterId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogsPaginated(_ input: DescribeConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigReleaseLog])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigReleaseLogs, logger: logger, on: eventLoop)
    }

    /// 查询配置发布历史
    @inlinable @discardableResult
    public func describeConfigReleaseLogsPaginated(_ input: DescribeConfigReleaseLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigReleaseLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigReleaseLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询配置发布历史
    ///
    /// - Returns: `AsyncSequence`s of `ConfigReleaseLog` and `DescribeConfigReleaseLogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigReleaseLogsPaginator(_ input: DescribeConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigReleaseLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigReleaseLogs, logger: logger, on: eventLoop)
    }
}
