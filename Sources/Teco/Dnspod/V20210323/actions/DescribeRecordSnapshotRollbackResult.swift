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

import TecoCore

extension Dnspod {
    /// DescribeRecordSnapshotRollbackResult请求参数结构体
    public struct DescribeRecordSnapshotRollbackResultRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 回滚任务 ID
        public let jobId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, jobId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.jobId = jobId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case jobId = "JobId"
            case domainId = "DomainId"
        }
    }

    /// DescribeRecordSnapshotRollbackResult返回参数结构体
    public struct DescribeRecordSnapshotRollbackResultResponse: TCResponseModel {
        /// 回滚任务 ID
        public let jobId: UInt64

        /// 回滚状态
        public let status: String

        /// 失败的记录信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedRecordList: [SnapshotRecord]?

        /// 所属域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 回滚进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: UInt64?

        /// 回滚剩余时间（单位：分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let leftMinutes: UInt64?

        /// 总记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 失败记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failed: UInt64?

        /// 成功记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let success: UInt64?

        /// 快照下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case status = "Status"
            case failedRecordList = "FailedRecordList"
            case domain = "Domain"
            case progress = "Progress"
            case leftMinutes = "LeftMinutes"
            case total = "Total"
            case failed = "Failed"
            case success = "Success"
            case cosUrl = "CosUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询解析记录重新回滚的结果
    @inlinable
    public func describeRecordSnapshotRollbackResult(_ input: DescribeRecordSnapshotRollbackResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordSnapshotRollbackResultResponse> {
        self.client.execute(action: "DescribeRecordSnapshotRollbackResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询解析记录重新回滚的结果
    @inlinable
    public func describeRecordSnapshotRollbackResult(_ input: DescribeRecordSnapshotRollbackResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordSnapshotRollbackResultResponse {
        try await self.client.execute(action: "DescribeRecordSnapshotRollbackResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询解析记录重新回滚的结果
    @inlinable
    public func describeRecordSnapshotRollbackResult(domain: String, jobId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordSnapshotRollbackResultResponse> {
        self.describeRecordSnapshotRollbackResult(.init(domain: domain, jobId: jobId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询解析记录重新回滚的结果
    @inlinable
    public func describeRecordSnapshotRollbackResult(domain: String, jobId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordSnapshotRollbackResultResponse {
        try await self.describeRecordSnapshotRollbackResult(.init(domain: domain, jobId: jobId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
