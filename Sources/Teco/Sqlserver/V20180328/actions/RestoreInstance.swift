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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Sqlserver {
    /// RestoreInstance请求参数结构体
    public struct RestoreInstanceRequest: TCRequestModel {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        /// 备份文件ID，该ID可以通过DescribeBackups接口返回数据中的Id字段获得
        public let backupId: Int64

        /// 备份恢复到的同一个APPID下的实例ID，不填则恢复到原实例ID
        public let targetInstanceId: String?

        /// 按照ReNameRestoreDatabase中的库进行恢复，并重命名，不填则按照默认方式命名恢复的库，且恢复所有的库。
        public let renameRestore: [RenameRestoreDatabase]?

        /// 备份任务组ID，在单库备份文件模式下，可通过[DescribeBackups](https://cloud.tencent.com/document/product/238/19943) 接口获得。
        public let groupId: String?

        public init(instanceId: String, backupId: Int64, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil, groupId: String? = nil) {
            self.instanceId = instanceId
            self.backupId = backupId
            self.targetInstanceId = targetInstanceId
            self.renameRestore = renameRestore
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupId = "BackupId"
            case targetInstanceId = "TargetInstanceId"
            case renameRestore = "RenameRestore"
            case groupId = "GroupId"
        }
    }

    /// RestoreInstance返回参数结构体
    public struct RestoreInstanceResponse: TCResponseModel {
        /// 异步流程任务ID，使用FlowId调用DescribeFlowStatus接口获取任务执行状态
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 根据备份文件恢复实例
    ///
    /// 本接口（RestoreInstance）用于根据备份文件恢复实例。
    @inlinable
    public func restoreInstance(_ input: RestoreInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreInstanceResponse> {
        self.client.execute(action: "RestoreInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据备份文件恢复实例
    ///
    /// 本接口（RestoreInstance）用于根据备份文件恢复实例。
    @inlinable
    public func restoreInstance(_ input: RestoreInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreInstanceResponse {
        try await self.client.execute(action: "RestoreInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据备份文件恢复实例
    ///
    /// 本接口（RestoreInstance）用于根据备份文件恢复实例。
    @inlinable
    public func restoreInstance(instanceId: String, backupId: Int64, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreInstanceResponse> {
        self.restoreInstance(.init(instanceId: instanceId, backupId: backupId, targetInstanceId: targetInstanceId, renameRestore: renameRestore, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 根据备份文件恢复实例
    ///
    /// 本接口（RestoreInstance）用于根据备份文件恢复实例。
    @inlinable
    public func restoreInstance(instanceId: String, backupId: Int64, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreInstanceResponse {
        try await self.restoreInstance(.init(instanceId: instanceId, backupId: backupId, targetInstanceId: targetInstanceId, renameRestore: renameRestore, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
