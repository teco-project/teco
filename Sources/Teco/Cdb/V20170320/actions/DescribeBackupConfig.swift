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

extension Cdb {
    /// DescribeBackupConfig请求参数结构体
    public struct DescribeBackupConfigRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeBackupConfig返回参数结构体
    public struct DescribeBackupConfigResponse: TCResponse {
        /// 自动备份开始的最早时间点，单位为时刻。例如，2 - 凌晨 2:00。（该字段已废弃，建议使用 BackupTimeWindow 字段）
        public let startTimeMin: Int64

        /// 自动备份开始的最晚时间点，单位为时刻。例如，6 - 凌晨 6:00。（该字段已废弃，建议使用 BackupTimeWindow 字段）
        public let startTimeMax: Int64

        /// 备份文件保留时间，单位为天。
        public let backupExpireDays: Int64

        /// 备份方式，可能的值为：physical - 物理备份，logical - 逻辑备份。
        public let backupMethod: String

        /// Binlog 文件保留时间，单位为天。
        public let binlogExpireDays: Int64

        /// 实例自动备份的时间窗。
        public let backupTimeWindow: CommonTimeWindow

        /// 定期保留开关，off - 不开启定期保留策略，on - 开启定期保留策略，默认为off
        public let enableBackupPeriodSave: String

        /// 定期保留最长天数，最小值：90，最大值：3650，默认值：1080
        public let backupPeriodSaveDays: Int64

        /// 定期保留策略周期，可取值：weekly - 周，monthly - 月， quarterly - 季度，yearly - 年，默认为monthly
        public let backupPeriodSaveInterval: String

        /// 定期保留的备份数量，最小值为1，最大值不超过定期保留策略周期内常规备份个数，默认值为1
        public let backupPeriodSaveCount: Int64

        /// 定期保留策略周期起始日期，格式：YYYY-MM-dd HH:mm:ss
        public let startBackupPeriodSaveDate: String

        /// 是否开启数据备份归档策略，off-关闭，on-打开，默认为off
        public let enableBackupArchive: String

        /// 数据备份归档起始天数，数据备份达到归档起始天数时进行归档，最小为180天，不得大于数据备份保留天数
        public let backupArchiveDays: Int64

        /// 是否开启日志备份归档策略，off-关闭，on-打开，默认为off
        public let enableBinlogArchive: String

        /// 日志备份归档起始天数，日志备份达到归档起始天数时进行归档，最小为180天，不得大于日志备份保留天数
        public let binlogArchiveDays: Int64

        /// 是否开启数据备份标准存储策略，off-关闭，on-打开，默认为off
        public let enableBackupStandby: String

        /// 数据备份标准存储起始天数，数据备份达到标准存储起始天数时进行转换，最小为30天，不得大于数据备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        public let backupStandbyDays: Int64

        /// 是否开启日志备份标准存储策略，off-关闭，on-打开，默认为off
        public let enableBinlogStandby: String

        /// 日志备份标准存储起始天数，日志备份达到标准存储起始天数时进行转换，最小为30天，不得大于日志备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        public let binlogStandbyDays: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case startTimeMin = "StartTimeMin"
            case startTimeMax = "StartTimeMax"
            case backupExpireDays = "BackupExpireDays"
            case backupMethod = "BackupMethod"
            case binlogExpireDays = "BinlogExpireDays"
            case backupTimeWindow = "BackupTimeWindow"
            case enableBackupPeriodSave = "EnableBackupPeriodSave"
            case backupPeriodSaveDays = "BackupPeriodSaveDays"
            case backupPeriodSaveInterval = "BackupPeriodSaveInterval"
            case backupPeriodSaveCount = "BackupPeriodSaveCount"
            case startBackupPeriodSaveDate = "StartBackupPeriodSaveDate"
            case enableBackupArchive = "EnableBackupArchive"
            case backupArchiveDays = "BackupArchiveDays"
            case enableBinlogArchive = "EnableBinlogArchive"
            case binlogArchiveDays = "BinlogArchiveDays"
            case enableBackupStandby = "EnableBackupStandby"
            case backupStandbyDays = "BackupStandbyDays"
            case enableBinlogStandby = "EnableBinlogStandby"
            case binlogStandbyDays = "BinlogStandbyDays"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库备份配置信息
    ///
    /// 本接口(DescribeBackupConfig)用于查询数据库备份配置信息。
    @inlinable
    public func describeBackupConfig(_ input: DescribeBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupConfigResponse> {
        self.client.execute(action: "DescribeBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库备份配置信息
    ///
    /// 本接口(DescribeBackupConfig)用于查询数据库备份配置信息。
    @inlinable
    public func describeBackupConfig(_ input: DescribeBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupConfigResponse {
        try await self.client.execute(action: "DescribeBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库备份配置信息
    ///
    /// 本接口(DescribeBackupConfig)用于查询数据库备份配置信息。
    @inlinable
    public func describeBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupConfigResponse> {
        self.describeBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库备份配置信息
    ///
    /// 本接口(DescribeBackupConfig)用于查询数据库备份配置信息。
    @inlinable
    public func describeBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupConfigResponse {
        try await self.describeBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
