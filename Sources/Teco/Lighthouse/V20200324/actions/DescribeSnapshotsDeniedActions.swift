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

extension Lighthouse {
    /// DescribeSnapshotsDeniedActions请求参数结构体
    public struct DescribeSnapshotsDeniedActionsRequest: TCRequestModel {
        /// 快照 ID 列表, 可通过 DescribeSnapshots 查询。
        public let snapshotIds: [String]

        public init(snapshotIds: [String]) {
            self.snapshotIds = snapshotIds
        }

        enum CodingKeys: String, CodingKey {
            case snapshotIds = "SnapshotIds"
        }
    }

    /// DescribeSnapshotsDeniedActions返回参数结构体
    public struct DescribeSnapshotsDeniedActionsResponse: TCResponseModel {
        /// 快照操作限制列表详细信息。
        public let snapshotDeniedActionSet: [SnapshotDeniedActions]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotDeniedActionSet = "SnapshotDeniedActionSet"
            case requestId = "RequestId"
        }
    }

    /// 查看快照操作限制列表
    ///
    /// 本接口（DescribeSnapshotsDeniedActions）用于查询一个或多个快照的操作限制列表信息。
    @inlinable
    public func describeSnapshotsDeniedActions(_ input: DescribeSnapshotsDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsDeniedActionsResponse> {
        self.client.execute(action: "DescribeSnapshotsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看快照操作限制列表
    ///
    /// 本接口（DescribeSnapshotsDeniedActions）用于查询一个或多个快照的操作限制列表信息。
    @inlinable
    public func describeSnapshotsDeniedActions(_ input: DescribeSnapshotsDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsDeniedActionsResponse {
        try await self.client.execute(action: "DescribeSnapshotsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看快照操作限制列表
    ///
    /// 本接口（DescribeSnapshotsDeniedActions）用于查询一个或多个快照的操作限制列表信息。
    @inlinable
    public func describeSnapshotsDeniedActions(snapshotIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsDeniedActionsResponse> {
        let input = DescribeSnapshotsDeniedActionsRequest(snapshotIds: snapshotIds)
        return self.client.execute(action: "DescribeSnapshotsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看快照操作限制列表
    ///
    /// 本接口（DescribeSnapshotsDeniedActions）用于查询一个或多个快照的操作限制列表信息。
    @inlinable
    public func describeSnapshotsDeniedActions(snapshotIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsDeniedActionsResponse {
        let input = DescribeSnapshotsDeniedActionsRequest(snapshotIds: snapshotIds)
        return try await self.client.execute(action: "DescribeSnapshotsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
