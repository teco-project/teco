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

extension Tcb {
    /// DescribeCloudBaseRunServer请求参数结构体
    public struct DescribeCloudBaseRunServerRequest: TCPaginatedRequest {
        /// 环境ID
        public let envId: String

        /// 服务名称
        public let serverName: String

        /// 分页偏移
        public let offset: Int64

        /// 分页数量
        public let limit: Int64

        /// 版本名字（精确匹配）
        public let versionName: String?

        public init(envId: String, serverName: String, offset: Int64, limit: Int64, versionName: String? = nil) {
            self.envId = envId
            self.serverName = serverName
            self.offset = offset
            self.limit = limit
            self.versionName = versionName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case offset = "Offset"
            case limit = "Limit"
            case versionName = "VersionName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudBaseRunServerResponse) -> DescribeCloudBaseRunServerRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCloudBaseRunServerRequest(envId: self.envId, serverName: self.serverName, offset: self.offset + .init(response.getItems().count), limit: self.limit, versionName: self.versionName)
        }
    }

    /// DescribeCloudBaseRunServer返回参数结构体
    public struct DescribeCloudBaseRunServerResponse: TCPaginatedResponse {
        /// 个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionItems: [CloudBaseRunServerVersionItem]?

        /// 服务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serverName: String?

        /// 是否对于外网开放
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isPublic: Bool?

        /// 镜像仓库
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageRepo: String?

        /// 流量配置的类型（FLOW,URL_PARAMS)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trafficType: String?

        /// 服务创建类型，默认为空，一键部署为oneclick
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case versionItems = "VersionItems"
            case serverName = "ServerName"
            case isPublic = "IsPublic"
            case imageRepo = "ImageRepo"
            case trafficType = "TrafficType"
            case sourceType = "SourceType"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CloudBaseRunServerVersionItem] {
            self.versionItems ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable
    public func describeCloudBaseRunServer(_ input: DescribeCloudBaseRunServerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunServerResponse> {
        self.client.execute(action: "DescribeCloudBaseRunServer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable
    public func describeCloudBaseRunServer(_ input: DescribeCloudBaseRunServerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunServerResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunServer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable
    public func describeCloudBaseRunServer(envId: String, serverName: String, offset: Int64, limit: Int64, versionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunServerResponse> {
        self.describeCloudBaseRunServer(.init(envId: envId, serverName: serverName, offset: offset, limit: limit, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable
    public func describeCloudBaseRunServer(envId: String, serverName: String, offset: Int64, limit: Int64, versionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunServerResponse {
        try await self.describeCloudBaseRunServer(.init(envId: envId, serverName: serverName, offset: offset, limit: limit, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable
    public func describeCloudBaseRunServerPaginated(_ input: DescribeCloudBaseRunServerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CloudBaseRunServerVersionItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseRunServer, logger: logger, on: eventLoop)
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    @inlinable @discardableResult
    public func describeCloudBaseRunServerPaginated(_ input: DescribeCloudBaseRunServerRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudBaseRunServerResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseRunServer, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询单个服务的详情
    ///
    /// 查询单个服务的详情，版本以及详情
    ///
    /// - Returns: `AsyncSequence`s of `CloudBaseRunServerVersionItem` and `DescribeCloudBaseRunServerResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudBaseRunServerPaginator(_ input: DescribeCloudBaseRunServerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudBaseRunServerRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudBaseRunServer, logger: logger, on: eventLoop)
    }
}
