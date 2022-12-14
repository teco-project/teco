//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// RollbackRecordSnapshot请求参数结构体
    public struct RollbackRecordSnapshotRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 快照 ID
        public let snapshotId: String

        /// 解析记录信息
        public let recordList: [SnapshotRecord]

        /// 之前的快照回滚任务 ID
        public let taskId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, snapshotId: String, recordList: [SnapshotRecord], taskId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.snapshotId = snapshotId
            self.recordList = recordList
            self.taskId = taskId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case snapshotId = "SnapshotId"
            case recordList = "RecordList"
            case taskId = "TaskId"
            case domainId = "DomainId"
        }
    }

    /// RollbackRecordSnapshot返回参数结构体
    public struct RollbackRecordSnapshotResponse: TCResponseModel {
        /// 回滚任务 ID
        public let jobId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 重新回滚指定解析记录快照
    @inlinable
    public func rollbackRecordSnapshot(_ input: RollbackRecordSnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RollbackRecordSnapshotResponse > {
        self.client.execute(action: "RollbackRecordSnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新回滚指定解析记录快照
    @inlinable
    public func rollbackRecordSnapshot(_ input: RollbackRecordSnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackRecordSnapshotResponse {
        try await self.client.execute(action: "RollbackRecordSnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新回滚指定解析记录快照
    @inlinable
    public func rollbackRecordSnapshot(domain: String, snapshotId: String, recordList: [SnapshotRecord], taskId: UInt64, domainId: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RollbackRecordSnapshotResponse > {
        self.rollbackRecordSnapshot(RollbackRecordSnapshotRequest(domain: domain, snapshotId: snapshotId, recordList: recordList, taskId: taskId, domainId: domainId), logger: logger, on: eventLoop)
    }

    /// 重新回滚指定解析记录快照
    @inlinable
    public func rollbackRecordSnapshot(domain: String, snapshotId: String, recordList: [SnapshotRecord], taskId: UInt64, domainId: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackRecordSnapshotResponse {
        try await self.rollbackRecordSnapshot(RollbackRecordSnapshotRequest(domain: domain, snapshotId: snapshotId, recordList: recordList, taskId: taskId, domainId: domainId), logger: logger, on: eventLoop)
    }
}
