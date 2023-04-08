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

extension Dnspod {
    /// CheckSnapshotRollback请求参数结构体
    public struct CheckSnapshotRollbackRequest: TCRequestModel {
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

    /// CheckSnapshotRollback返回参数结构体
    public struct CheckSnapshotRollbackResponse: TCResponseModel {
        /// 快照记录 ID
        public let snapshotId: String

        /// 回滚时长（分钟）
        public let costMinutes: UInt64

        /// 快照所属域名
        public let domain: String

        /// 解析记录总数
        public let total: UInt64

        /// 值为 1，表示超时
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeout: UInt64?

        /// 检查失败数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failed: UInt64?

        /// 失败记录信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedRecordList: [SnapshotRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case costMinutes = "CostMinutes"
            case domain = "Domain"
            case total = "Total"
            case timeout = "Timeout"
            case failed = "Failed"
            case failedRecordList = "FailedRecordList"
            case requestId = "RequestId"
        }
    }

    /// 快照回滚前检查
    @inlinable
    public func checkSnapshotRollback(_ input: CheckSnapshotRollbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckSnapshotRollbackResponse> {
        self.client.execute(action: "CheckSnapshotRollback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 快照回滚前检查
    @inlinable
    public func checkSnapshotRollback(_ input: CheckSnapshotRollbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckSnapshotRollbackResponse {
        try await self.client.execute(action: "CheckSnapshotRollback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 快照回滚前检查
    @inlinable
    public func checkSnapshotRollback(domain: String, snapshotId: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckSnapshotRollbackResponse> {
        self.checkSnapshotRollback(.init(domain: domain, snapshotId: snapshotId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 快照回滚前检查
    @inlinable
    public func checkSnapshotRollback(domain: String, snapshotId: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckSnapshotRollbackResponse {
        try await self.checkSnapshotRollback(.init(domain: domain, snapshotId: snapshotId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
