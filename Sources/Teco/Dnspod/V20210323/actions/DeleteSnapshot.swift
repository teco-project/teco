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

extension Dnspod {
    /// DeleteSnapshot请求参数结构体
    public struct DeleteSnapshotRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 快照记录 ID
        public let snapshotId: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, snapshotId: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.snapshotId = snapshotId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case snapshotId = "SnapshotId"
            case domainId = "DomainId"
        }
    }

    /// DeleteSnapshot返回参数结构体
    public struct DeleteSnapshotResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除快照
    @inlinable @discardableResult
    public func deleteSnapshot(_ input: DeleteSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotResponse> {
        self.client.execute(action: "DeleteSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除快照
    @inlinable @discardableResult
    public func deleteSnapshot(_ input: DeleteSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotResponse {
        try await self.client.execute(action: "DeleteSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除快照
    @inlinable @discardableResult
    public func deleteSnapshot(domain: String, snapshotId: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotResponse> {
        self.deleteSnapshot(DeleteSnapshotRequest(domain: domain, snapshotId: snapshotId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除快照
    @inlinable @discardableResult
    public func deleteSnapshot(domain: String, snapshotId: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotResponse {
        try await self.deleteSnapshot(DeleteSnapshotRequest(domain: domain, snapshotId: snapshotId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
