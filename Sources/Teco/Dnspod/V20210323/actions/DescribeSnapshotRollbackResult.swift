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

extension Dnspod {
    /// DescribeSnapshotRollbackResult请求参数结构体
    public struct DescribeSnapshotRollbackResultRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 快照回滚任务 ID
        public let taskId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, taskId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.taskId = taskId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case taskId = "TaskId"
            case domainId = "DomainId"
        }
    }

    /// DescribeSnapshotRollbackResult返回参数结构体
    public struct DescribeSnapshotRollbackResultResponse: TCResponseModel {
        /// 快照所属域名
        public let domain: String

        /// 回滚剩余时间（分钟）
        public let leftMinutes: UInt64

        /// 回滚进度百分比
        public let progress: UInt64

        /// 快照 ID
        public let snapshotId: String

        /// 回滚状态
        public let status: String

        /// 快照回滚任务 ID
        public let taskId: UInt64

        /// 成功数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let success: UInt64?

        /// 失败数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failed: UInt64?

        /// 总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 失败详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedRecordList: [SnapshotRecord]?

        /// 快照的下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case leftMinutes = "LeftMinutes"
            case progress = "Progress"
            case snapshotId = "SnapshotId"
            case status = "Status"
            case taskId = "TaskId"
            case success = "Success"
            case failed = "Failed"
            case total = "Total"
            case failedRecordList = "FailedRecordList"
            case cosUrl = "CosUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询快照回滚结果
    @inlinable
    public func describeSnapshotRollbackResult(_ input: DescribeSnapshotRollbackResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotRollbackResultResponse> {
        self.client.execute(action: "DescribeSnapshotRollbackResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照回滚结果
    @inlinable
    public func describeSnapshotRollbackResult(_ input: DescribeSnapshotRollbackResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotRollbackResultResponse {
        try await self.client.execute(action: "DescribeSnapshotRollbackResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照回滚结果
    @inlinable
    public func describeSnapshotRollbackResult(domain: String, taskId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotRollbackResultResponse> {
        self.describeSnapshotRollbackResult(.init(domain: domain, taskId: taskId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照回滚结果
    @inlinable
    public func describeSnapshotRollbackResult(domain: String, taskId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotRollbackResultResponse {
        try await self.describeSnapshotRollbackResult(.init(domain: domain, taskId: taskId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
