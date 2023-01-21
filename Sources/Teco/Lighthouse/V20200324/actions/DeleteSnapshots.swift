//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Lighthouse {
    /// DeleteSnapshots请求参数结构体
    public struct DeleteSnapshotsRequest: TCRequestModel {
        /// 要删除的快照 ID 列表，可通过 DescribeSnapshots 查询。
        public let snapshotIds: [String]

        public init(snapshotIds: [String]) {
            self.snapshotIds = snapshotIds
        }

        enum CodingKeys: String, CodingKey {
            case snapshotIds = "SnapshotIds"
        }
    }

    /// DeleteSnapshots返回参数结构体
    public struct DeleteSnapshotsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// 快照必须处于 NORMAL 状态，快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。
    @inlinable @discardableResult
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotsResponse> {
        self.client.execute(action: "DeleteSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// 快照必须处于 NORMAL 状态，快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。
    @inlinable @discardableResult
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotsResponse {
        try await self.client.execute(action: "DeleteSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// 快照必须处于 NORMAL 状态，快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。
    @inlinable @discardableResult
    public func deleteSnapshots(snapshotIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotsResponse> {
        self.deleteSnapshots(DeleteSnapshotsRequest(snapshotIds: snapshotIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// 快照必须处于 NORMAL 状态，快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。
    @inlinable @discardableResult
    public func deleteSnapshots(snapshotIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotsResponse {
        try await self.deleteSnapshots(DeleteSnapshotsRequest(snapshotIds: snapshotIds), region: region, logger: logger, on: eventLoop)
    }
}
