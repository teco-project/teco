//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Sqlserver {
    /// DescribeBackups请求参数结构体
    public struct DescribeBackupsRequest: TCRequestModel {
        /// 开始时间(yyyy-MM-dd HH:mm:ss)
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间(yyyy-MM-dd HH:mm:ss)
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: Int64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: Int64?

        /// 按照备份名称筛选，不填则不筛选此项
        public let backupName: String?

        /// 按照备份策略筛选，0-实例备份，1-多库备份，不填则不筛选此项
        public let strategy: Int64?

        /// 按照备份方式筛选，0-后台自动定时备份，1-用户手动临时备份，2-定期备份，不填则不筛选此项
        public let backupWay: Int64?

        /// 按照备份ID筛选，不填则不筛选此项
        public let backupId: UInt64?

        /// 按照备份的库名称筛选，不填则不筛选此项
        public let databaseName: String?

        /// 是否分组查询，默认是0，单库备份情况下 0-兼容老方式不分组，1-单库备份分组后展示
        public let group: Int64?

        /// 备份类型，1-数据备份，2-日志备份，默认值为1
        public let type: Int64?

        /// 按照备份文件形式筛选，pkg-打包备份文件，single-单库备份文件
        public let backupFormat: String?

        public init(startTime: Date, endTime: Date, instanceId: String, limit: Int64? = nil, offset: Int64? = nil, backupName: String? = nil, strategy: Int64? = nil, backupWay: Int64? = nil, backupId: UInt64? = nil, databaseName: String? = nil, group: Int64? = nil, type: Int64? = nil, backupFormat: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.backupName = backupName
            self.strategy = strategy
            self.backupWay = backupWay
            self.backupId = backupId
            self.databaseName = databaseName
            self.group = group
            self.type = type
            self.backupFormat = backupFormat
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case backupName = "BackupName"
            case strategy = "Strategy"
            case backupWay = "BackupWay"
            case backupId = "BackupId"
            case databaseName = "DatabaseName"
            case group = "Group"
            case type = "Type"
            case backupFormat = "BackupFormat"
        }
    }

    /// DescribeBackups返回参数结构体
    public struct DescribeBackupsResponse: TCResponseModel {
        /// 备份总数量
        public let totalCount: Int64

        /// 备份列表详情
        public let backups: [Backup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backups = "Backups"
            case requestId = "RequestId"
        }
    }

    /// 查询备份列表
    ///
    /// 本接口(DescribeBackups)用于查询备份列表。
    @inlinable
    public func describeBackups(_ input: DescribeBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupsResponse> {
        self.client.execute(action: "DescribeBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份列表
    ///
    /// 本接口(DescribeBackups)用于查询备份列表。
    @inlinable
    public func describeBackups(_ input: DescribeBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupsResponse {
        try await self.client.execute(action: "DescribeBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份列表
    ///
    /// 本接口(DescribeBackups)用于查询备份列表。
    @inlinable
    public func describeBackups(startTime: Date, endTime: Date, instanceId: String, limit: Int64? = nil, offset: Int64? = nil, backupName: String? = nil, strategy: Int64? = nil, backupWay: Int64? = nil, backupId: UInt64? = nil, databaseName: String? = nil, group: Int64? = nil, type: Int64? = nil, backupFormat: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupsResponse> {
        self.describeBackups(DescribeBackupsRequest(startTime: startTime, endTime: endTime, instanceId: instanceId, limit: limit, offset: offset, backupName: backupName, strategy: strategy, backupWay: backupWay, backupId: backupId, databaseName: databaseName, group: group, type: type, backupFormat: backupFormat), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份列表
    ///
    /// 本接口(DescribeBackups)用于查询备份列表。
    @inlinable
    public func describeBackups(startTime: Date, endTime: Date, instanceId: String, limit: Int64? = nil, offset: Int64? = nil, backupName: String? = nil, strategy: Int64? = nil, backupWay: Int64? = nil, backupId: UInt64? = nil, databaseName: String? = nil, group: Int64? = nil, type: Int64? = nil, backupFormat: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupsResponse {
        try await self.describeBackups(DescribeBackupsRequest(startTime: startTime, endTime: endTime, instanceId: instanceId, limit: limit, offset: offset, backupName: backupName, strategy: strategy, backupWay: backupWay, backupId: backupId, databaseName: databaseName, group: group, type: type, backupFormat: backupFormat), region: region, logger: logger, on: eventLoop)
    }
}
