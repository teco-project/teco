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

extension Tcaplusdb {
    /// SetBackupExpireRule请求参数结构体
    public struct SetBackupExpireRuleRequest: TCRequestModel {
        /// 表所属集群实例ID
        public let clusterId: String

        /// 淘汰策略数组
        public let backupExpireRules: [BackupExpireRuleInfo]

        public init(clusterId: String, backupExpireRules: [BackupExpireRuleInfo]) {
            self.clusterId = clusterId
            self.backupExpireRules = backupExpireRules
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case backupExpireRules = "BackupExpireRules"
        }
    }

    /// SetBackupExpireRule返回参数结构体
    public struct SetBackupExpireRuleResponse: TCResponseModel {
        /// TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 新增、删除、修改备份过期策略
    ///
    /// 新增、删除、修改备份过期策略， ClusterId必须为具体的集群Id（appid）
    @inlinable
    public func setBackupExpireRule(_ input: SetBackupExpireRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetBackupExpireRuleResponse> {
        self.client.execute(action: "SetBackupExpireRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增、删除、修改备份过期策略
    ///
    /// 新增、删除、修改备份过期策略， ClusterId必须为具体的集群Id（appid）
    @inlinable
    public func setBackupExpireRule(_ input: SetBackupExpireRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetBackupExpireRuleResponse {
        try await self.client.execute(action: "SetBackupExpireRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增、删除、修改备份过期策略
    ///
    /// 新增、删除、修改备份过期策略， ClusterId必须为具体的集群Id（appid）
    @inlinable
    public func setBackupExpireRule(clusterId: String, backupExpireRules: [BackupExpireRuleInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetBackupExpireRuleResponse> {
        self.setBackupExpireRule(.init(clusterId: clusterId, backupExpireRules: backupExpireRules), region: region, logger: logger, on: eventLoop)
    }

    /// 新增、删除、修改备份过期策略
    ///
    /// 新增、删除、修改备份过期策略， ClusterId必须为具体的集群Id（appid）
    @inlinable
    public func setBackupExpireRule(clusterId: String, backupExpireRules: [BackupExpireRuleInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetBackupExpireRuleResponse {
        try await self.setBackupExpireRule(.init(clusterId: clusterId, backupExpireRules: backupExpireRules), region: region, logger: logger, on: eventLoop)
    }
}
