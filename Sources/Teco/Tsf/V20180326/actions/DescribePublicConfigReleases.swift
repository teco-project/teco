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

extension Tsf {
    /// DescribePublicConfigReleases请求参数结构体
    public struct DescribePublicConfigReleasesRequest: TCPaginatedRequest {
        /// 配置项名称，不传入时查询全量
        public let configName: String?

        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?

        /// 每页条数
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 配置项ID，不传入时查询全量
        public let configId: String?

        public init(configName: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil) {
            self.configName = configName
            self.namespaceId = namespaceId
            self.limit = limit
            self.offset = offset
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configName = "ConfigName"
            case namespaceId = "NamespaceId"
            case limit = "Limit"
            case offset = "Offset"
            case configId = "ConfigId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePublicConfigReleasesResponse) -> DescribePublicConfigReleasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePublicConfigReleasesRequest(configName: self.configName, namespaceId: self.namespaceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), configId: self.configId)
        }
    }

    /// DescribePublicConfigReleases返回参数结构体
    public struct DescribePublicConfigReleasesResponse: TCPaginatedResponse {
        /// 公共配置发布信息
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

    /// 查询公共配置发布信息
    @inlinable
    public func describePublicConfigReleases(_ input: DescribePublicConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigReleasesResponse> {
        self.client.execute(action: "DescribePublicConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布信息
    @inlinable
    public func describePublicConfigReleases(_ input: DescribePublicConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigReleasesResponse {
        try await self.client.execute(action: "DescribePublicConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公共配置发布信息
    @inlinable
    public func describePublicConfigReleases(configName: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigReleasesResponse> {
        let input = DescribePublicConfigReleasesRequest(configName: configName, namespaceId: namespaceId, limit: limit, offset: offset, configId: configId)
        return self.client.execute(action: "DescribePublicConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布信息
    @inlinable
    public func describePublicConfigReleases(configName: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, configId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigReleasesResponse {
        let input = DescribePublicConfigReleasesRequest(configName: configName, namespaceId: namespaceId, limit: limit, offset: offset, configId: configId)
        return try await self.client.execute(action: "DescribePublicConfigReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公共配置发布信息
    @inlinable
    public func describePublicConfigReleasesPaginated(_ input: DescribePublicConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigRelease])> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigReleases, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布信息
    @inlinable @discardableResult
    public func describePublicConfigReleasesPaginated(_ input: DescribePublicConfigReleasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublicConfigReleasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigReleases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布信息
    ///
    /// - Returns: `AsyncSequence`s of `ConfigRelease` and `DescribePublicConfigReleasesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePublicConfigReleasesPaginator(_ input: DescribePublicConfigReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePublicConfigReleasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePublicConfigReleases, logger: logger, on: eventLoop)
    }
}
