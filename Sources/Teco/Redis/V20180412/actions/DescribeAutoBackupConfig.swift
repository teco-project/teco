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

extension Redis {
    /// DescribeAutoBackupConfig请求参数结构体
    public struct DescribeAutoBackupConfigRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeAutoBackupConfig返回参数结构体
    public struct DescribeAutoBackupConfigResponse: TCResponseModel {
        /// 备份类型。自动备份类型： 1 “定时回档”
        public let autoBackupType: Int64

        /// Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        public let weekDays: [String]

        /// 时间段。
        public let timePeriod: String

        /// 全量备份文件保存天数
        public let backupStorageDays: Int64

        /// tendis binlog备份文件保存天数
        public let binlogStorageDays: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoBackupType = "AutoBackupType"
            case weekDays = "WeekDays"
            case timePeriod = "TimePeriod"
            case backupStorageDays = "BackupStorageDays"
            case binlogStorageDays = "BinlogStorageDays"
            case requestId = "RequestId"
        }
    }

    /// 获取自动备份配置
    ///
    /// 获取备份配置
    @inlinable
    public func describeAutoBackupConfig(_ input: DescribeAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoBackupConfigResponse> {
        self.client.execute(action: "DescribeAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自动备份配置
    ///
    /// 获取备份配置
    @inlinable
    public func describeAutoBackupConfig(_ input: DescribeAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoBackupConfigResponse {
        try await self.client.execute(action: "DescribeAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自动备份配置
    ///
    /// 获取备份配置
    @inlinable
    public func describeAutoBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoBackupConfigResponse> {
        self.describeAutoBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取自动备份配置
    ///
    /// 获取备份配置
    @inlinable
    public func describeAutoBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoBackupConfigResponse {
        try await self.describeAutoBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
