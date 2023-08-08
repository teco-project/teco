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

extension Redis {
    /// DescribeAutoBackupConfig请求参数结构体
    public struct DescribeAutoBackupConfigRequest: TCRequestModel {
        /// 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
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
        /// 该参数因兼容性问题暂时保留，请忽略。
        public let autoBackupType: Int64

        /// 备份周期，默认为每天自动备份，Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        public let weekDays: [String]

        /// 备份任务发起时间段。
        public let timePeriod: String

        /// 全量备份文件保存天数。默认为7天。如需保存更多天数，请[提交工单](https://console.cloud.tencent.com/workorder/category)申请。
        public let backupStorageDays: Int64

        /// 该参数不再使用，请忽略。
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
    /// 本接口（DescribeAutoBackupConfig）用于获取自动备份配置规则。
    @inlinable
    public func describeAutoBackupConfig(_ input: DescribeAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoBackupConfigResponse> {
        self.client.execute(action: "DescribeAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自动备份配置
    ///
    /// 本接口（DescribeAutoBackupConfig）用于获取自动备份配置规则。
    @inlinable
    public func describeAutoBackupConfig(_ input: DescribeAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoBackupConfigResponse {
        try await self.client.execute(action: "DescribeAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自动备份配置
    ///
    /// 本接口（DescribeAutoBackupConfig）用于获取自动备份配置规则。
    @inlinable
    public func describeAutoBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoBackupConfigResponse> {
        self.describeAutoBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取自动备份配置
    ///
    /// 本接口（DescribeAutoBackupConfig）用于获取自动备份配置规则。
    @inlinable
    public func describeAutoBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoBackupConfigResponse {
        try await self.describeAutoBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
