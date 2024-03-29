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

extension Postgres {
    /// DescribeBackupDownloadURL请求参数结构体
    public struct DescribeBackupDownloadURLRequest: TCRequest {
        /// 实例ID。
        public let dbInstanceId: String

        /// 备份类型，目前支持：LogBackup，BaseBackup。
        public let backupType: String

        /// 备份的唯一ID。
        public let backupId: String

        /// 链接的有效时间，默认为12小时。
        public let urlExpireTime: UInt64?

        /// 备份下载限制
        public let backupDownloadRestriction: BackupDownloadRestriction?

        public init(dbInstanceId: String, backupType: String, backupId: String, urlExpireTime: UInt64? = nil, backupDownloadRestriction: BackupDownloadRestriction? = nil) {
            self.dbInstanceId = dbInstanceId
            self.backupType = backupType
            self.backupId = backupId
            self.urlExpireTime = urlExpireTime
            self.backupDownloadRestriction = backupDownloadRestriction
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case backupType = "BackupType"
            case backupId = "BackupId"
            case urlExpireTime = "URLExpireTime"
            case backupDownloadRestriction = "BackupDownloadRestriction"
        }
    }

    /// DescribeBackupDownloadURL返回参数结构体
    public struct DescribeBackupDownloadURLResponse: TCResponse {
        /// 备份的下载地址。
        public let backupDownloadURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupDownloadURL = "BackupDownloadURL"
            case requestId = "RequestId"
        }
    }

    /// 查询备份集的下载地址
    ///
    /// 本接口 (DescribeBackupDownloadURL) 用于查询指定备份集的下载地址，可包括全量备份集、增量日志备份集。
    @inlinable
    public func describeBackupDownloadURL(_ input: DescribeBackupDownloadURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadURLResponse> {
        self.client.execute(action: "DescribeBackupDownloadURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份集的下载地址
    ///
    /// 本接口 (DescribeBackupDownloadURL) 用于查询指定备份集的下载地址，可包括全量备份集、增量日志备份集。
    @inlinable
    public func describeBackupDownloadURL(_ input: DescribeBackupDownloadURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadURLResponse {
        try await self.client.execute(action: "DescribeBackupDownloadURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份集的下载地址
    ///
    /// 本接口 (DescribeBackupDownloadURL) 用于查询指定备份集的下载地址，可包括全量备份集、增量日志备份集。
    @inlinable
    public func describeBackupDownloadURL(dbInstanceId: String, backupType: String, backupId: String, urlExpireTime: UInt64? = nil, backupDownloadRestriction: BackupDownloadRestriction? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadURLResponse> {
        self.describeBackupDownloadURL(.init(dbInstanceId: dbInstanceId, backupType: backupType, backupId: backupId, urlExpireTime: urlExpireTime, backupDownloadRestriction: backupDownloadRestriction), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份集的下载地址
    ///
    /// 本接口 (DescribeBackupDownloadURL) 用于查询指定备份集的下载地址，可包括全量备份集、增量日志备份集。
    @inlinable
    public func describeBackupDownloadURL(dbInstanceId: String, backupType: String, backupId: String, urlExpireTime: UInt64? = nil, backupDownloadRestriction: BackupDownloadRestriction? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadURLResponse {
        try await self.describeBackupDownloadURL(.init(dbInstanceId: dbInstanceId, backupType: backupType, backupId: backupId, urlExpireTime: urlExpireTime, backupDownloadRestriction: backupDownloadRestriction), region: region, logger: logger, on: eventLoop)
    }
}
