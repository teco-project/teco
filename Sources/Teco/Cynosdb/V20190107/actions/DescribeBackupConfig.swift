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

extension Cynosdb {
    /// DescribeBackupConfig请求参数结构体
    public struct DescribeBackupConfigRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeBackupConfig返回参数结构体
    public struct DescribeBackupConfigResponse: TCResponseModel {
        /// 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        public let backupTimeBeg: UInt64

        /// 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        public let backupTimeEnd: UInt64

        /// 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800
        public let reserveDuration: UInt64

        /// 备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupFreq: [String]?

        /// 备份方式，logic-逻辑备份，snapshot-快照备份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupTimeBeg = "BackupTimeBeg"
            case backupTimeEnd = "BackupTimeEnd"
            case reserveDuration = "ReserveDuration"
            case backupFreq = "BackupFreq"
            case backupType = "BackupType"
            case requestId = "RequestId"
        }
    }

    /// 查询备份配置信息
    ///
    /// 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间
    @inlinable
    public func describeBackupConfig(_ input: DescribeBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupConfigResponse> {
        self.client.execute(action: "DescribeBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份配置信息
    ///
    /// 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间
    @inlinable
    public func describeBackupConfig(_ input: DescribeBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupConfigResponse {
        try await self.client.execute(action: "DescribeBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份配置信息
    ///
    /// 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间
    @inlinable
    public func describeBackupConfig(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupConfigResponse> {
        self.describeBackupConfig(DescribeBackupConfigRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份配置信息
    ///
    /// 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间
    @inlinable
    public func describeBackupConfig(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupConfigResponse {
        try await self.describeBackupConfig(DescribeBackupConfigRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
