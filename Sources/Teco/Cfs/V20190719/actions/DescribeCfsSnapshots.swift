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

extension Cfs {
    /// DescribeCfsSnapshots请求参数结构体
    public struct DescribeCfsSnapshotsRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String?

        /// 快照ID
        public let snapshotId: String?

        /// 分页起始位置
        public let offset: UInt64?

        /// 页面长度
        public let limit: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 排序取值
        public let orderField: String?

        /// 排序 升序或者降序
        public let order: String?

        public init(fileSystemId: String? = nil, snapshotId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil) {
            self.fileSystemId = fileSystemId
            self.snapshotId = snapshotId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case snapshotId = "SnapshotId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case orderField = "OrderField"
            case order = "Order"
        }
    }

    /// DescribeCfsSnapshots返回参数结构体
    public struct DescribeCfsSnapshotsResponse: TCResponseModel {
        /// 总个数
        public let totalCount: UInt64

        /// 快照信息描述
        public let snapshots: [SnapshotInfo]

        /// 快照列表快照汇总
        public let totalSize: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case snapshots = "Snapshots"
            case totalSize = "TotalSize"
            case requestId = "RequestId"
        }
    }

    /// 查询快照列表
    ///
    /// 查询文件系统快照列表
    @inlinable
    public func describeCfsSnapshots(_ input: DescribeCfsSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsSnapshotsResponse> {
        self.client.execute(action: "DescribeCfsSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 查询文件系统快照列表
    @inlinable
    public func describeCfsSnapshots(_ input: DescribeCfsSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsSnapshotsResponse {
        try await self.client.execute(action: "DescribeCfsSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照列表
    ///
    /// 查询文件系统快照列表
    @inlinable
    public func describeCfsSnapshots(fileSystemId: String? = nil, snapshotId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsSnapshotsResponse> {
        self.describeCfsSnapshots(DescribeCfsSnapshotsRequest(fileSystemId: fileSystemId, snapshotId: snapshotId, offset: offset, limit: limit, filters: filters, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 查询文件系统快照列表
    @inlinable
    public func describeCfsSnapshots(fileSystemId: String? = nil, snapshotId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsSnapshotsResponse {
        try await self.describeCfsSnapshots(DescribeCfsSnapshotsRequest(fileSystemId: fileSystemId, snapshotId: snapshotId, offset: offset, limit: limit, filters: filters, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }
}
