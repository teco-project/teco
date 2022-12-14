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

extension Cynosdb {
    /// DeleteBackup请求参数结构体
    public struct DeleteBackupRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 备份文件ID
        public let snapshotIdList: [Int64]

        public init(clusterId: String, snapshotIdList: [Int64]) {
            self.clusterId = clusterId
            self.snapshotIdList = snapshotIdList
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case snapshotIdList = "SnapshotIdList"
        }
    }

    /// DeleteBackup返回参数结构体
    public struct DeleteBackupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除手动备份
    ///
    /// 为集群删除手动备份，无法删除自动备份
    @inlinable
    public func deleteBackup(_ input: DeleteBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteBackupResponse > {
        self.client.execute(action: "DeleteBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除手动备份
    ///
    /// 为集群删除手动备份，无法删除自动备份
    @inlinable
    public func deleteBackup(_ input: DeleteBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupResponse {
        try await self.client.execute(action: "DeleteBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除手动备份
    ///
    /// 为集群删除手动备份，无法删除自动备份
    @inlinable
    public func deleteBackup(clusterId: String, snapshotIdList: [Int64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteBackupResponse > {
        self.deleteBackup(DeleteBackupRequest(clusterId: clusterId, snapshotIdList: snapshotIdList), logger: logger, on: eventLoop)
    }

    /// 删除手动备份
    ///
    /// 为集群删除手动备份，无法删除自动备份
    @inlinable
    public func deleteBackup(clusterId: String, snapshotIdList: [Int64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupResponse {
        try await self.deleteBackup(DeleteBackupRequest(clusterId: clusterId, snapshotIdList: snapshotIdList), logger: logger, on: eventLoop)
    }
}
