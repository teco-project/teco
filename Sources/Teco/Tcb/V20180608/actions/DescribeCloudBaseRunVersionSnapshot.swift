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

extension Tcb {
    /// DescribeCloudBaseRunVersionSnapshot请求参数结构体
    public struct DescribeCloudBaseRunVersionSnapshotRequest: TCPaginatedRequest {
        /// 服务名
        public let serverName: String

        /// 版本名
        public let versionName: String

        /// 环境id
        public let envId: String

        /// 版本历史名
        public let snapshotName: String?

        /// 偏移量。默认0
        public let offset: Int64?

        /// 限制大小。默认10，最大20
        public let limit: Int64?

        public init(serverName: String, versionName: String, envId: String, snapshotName: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.serverName = serverName
            self.versionName = versionName
            self.envId = envId
            self.snapshotName = snapshotName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case serverName = "ServerName"
            case versionName = "VersionName"
            case envId = "EnvId"
            case snapshotName = "SnapshotName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudBaseRunVersionSnapshotResponse) -> DescribeCloudBaseRunVersionSnapshotRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(serverName: self.serverName, versionName: self.versionName, envId: self.envId, snapshotName: self.snapshotName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCloudBaseRunVersionSnapshot返回参数结构体
    public struct DescribeCloudBaseRunVersionSnapshotResponse: TCPaginatedResponse {
        /// 版本历史
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshots: [CloudRunServiceSimpleVersionSnapshot]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshots = "Snapshots"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CloudRunServiceSimpleVersionSnapshot`` list from the paginated response.
        public func getItems() -> [CloudRunServiceSimpleVersionSnapshot] {
            self.snapshots ?? []
        }
    }

    /// 查询版本历史
    @inlinable
    public func describeCloudBaseRunVersionSnapshot(_ input: DescribeCloudBaseRunVersionSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunVersionSnapshotResponse> {
        self.client.execute(action: "DescribeCloudBaseRunVersionSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询版本历史
    @inlinable
    public func describeCloudBaseRunVersionSnapshot(_ input: DescribeCloudBaseRunVersionSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunVersionSnapshotResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunVersionSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询版本历史
    @inlinable
    public func describeCloudBaseRunVersionSnapshot(serverName: String, versionName: String, envId: String, snapshotName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunVersionSnapshotResponse> {
        self.describeCloudBaseRunVersionSnapshot(.init(serverName: serverName, versionName: versionName, envId: envId, snapshotName: snapshotName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询版本历史
    @inlinable
    public func describeCloudBaseRunVersionSnapshot(serverName: String, versionName: String, envId: String, snapshotName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunVersionSnapshotResponse {
        try await self.describeCloudBaseRunVersionSnapshot(.init(serverName: serverName, versionName: versionName, envId: envId, snapshotName: snapshotName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询版本历史
    @inlinable
    public func describeCloudBaseRunVersionSnapshotPaginated(_ input: DescribeCloudBaseRunVersionSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [CloudRunServiceSimpleVersionSnapshot])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseRunVersionSnapshot, logger: logger, on: eventLoop)
    }

    /// 查询版本历史
    @inlinable @discardableResult
    public func describeCloudBaseRunVersionSnapshotPaginated(_ input: DescribeCloudBaseRunVersionSnapshotRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudBaseRunVersionSnapshotResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseRunVersionSnapshot, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询版本历史
    ///
    /// - Returns: `AsyncSequence`s of ``CloudRunServiceSimpleVersionSnapshot`` and ``DescribeCloudBaseRunVersionSnapshotResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudBaseRunVersionSnapshotPaginator(_ input: DescribeCloudBaseRunVersionSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudBaseRunVersionSnapshotRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudBaseRunVersionSnapshot, logger: logger, on: eventLoop)
    }
}
