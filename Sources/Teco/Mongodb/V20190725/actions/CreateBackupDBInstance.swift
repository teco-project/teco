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

extension Mongodb {
    /// CreateBackupDBInstance请求参数结构体
    public struct CreateBackupDBInstanceRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 0-逻辑备份，1-物理备份
        public let backupMethod: Int64

        /// 备份备注
        public let backupRemark: String?

        public init(instanceId: String, backupMethod: Int64, backupRemark: String? = nil) {
            self.instanceId = instanceId
            self.backupMethod = backupMethod
            self.backupRemark = backupRemark
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMethod = "BackupMethod"
            case backupRemark = "BackupRemark"
        }
    }

    /// CreateBackupDBInstance返回参数结构体
    public struct CreateBackupDBInstanceResponse: TCResponseModel {
        /// 查询备份流程的状态
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 备份实例接口
    @inlinable
    public func createBackupDBInstance(_ input: CreateBackupDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupDBInstanceResponse> {
        self.client.execute(action: "CreateBackupDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 备份实例接口
    @inlinable
    public func createBackupDBInstance(_ input: CreateBackupDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupDBInstanceResponse {
        try await self.client.execute(action: "CreateBackupDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 备份实例接口
    @inlinable
    public func createBackupDBInstance(instanceId: String, backupMethod: Int64, backupRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupDBInstanceResponse> {
        self.createBackupDBInstance(CreateBackupDBInstanceRequest(instanceId: instanceId, backupMethod: backupMethod, backupRemark: backupRemark), region: region, logger: logger, on: eventLoop)
    }

    /// 备份实例接口
    @inlinable
    public func createBackupDBInstance(instanceId: String, backupMethod: Int64, backupRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupDBInstanceResponse {
        try await self.createBackupDBInstance(CreateBackupDBInstanceRequest(instanceId: instanceId, backupMethod: backupMethod, backupRemark: backupRemark), region: region, logger: logger, on: eventLoop)
    }
}
