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
    /// 回滚前检查单条记录
    @inlinable
    public func checkRecordSnapshotRollback(_ input: CheckRecordSnapshotRollbackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckRecordSnapshotRollbackResponse > {
        self.client.execute(action: "CheckRecordSnapshotRollback", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 回滚前检查单条记录
    @inlinable
    public func checkRecordSnapshotRollback(_ input: CheckRecordSnapshotRollbackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckRecordSnapshotRollbackResponse {
        try await self.client.execute(action: "CheckRecordSnapshotRollback", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckRecordSnapshotRollback请求参数结构体
    public struct CheckRecordSnapshotRollbackRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 快照 ID
        public let snapshotId: String
        
        /// 解析记录信息
        public let record: SnapshotRecord
        
        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?
        
        public init (domain: String, snapshotId: String, record: SnapshotRecord, domainId: UInt64?) {
            self.domain = domain
            self.snapshotId = snapshotId
            self.record = record
            self.domainId = domainId
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case snapshotId = "SnapshotId"
            case record = "Record"
            case domainId = "DomainId"
        }
    }
    
    /// CheckRecordSnapshotRollback返回参数结构体
    public struct CheckRecordSnapshotRollbackResponse: TCResponseModel {
        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reason: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case reason = "Reason"
            case requestId = "RequestId"
        }
    }
}
