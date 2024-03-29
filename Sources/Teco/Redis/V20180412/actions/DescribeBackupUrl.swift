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
    /// DescribeBackupUrl请求参数结构体
    public struct DescribeBackupUrlRequest: TCRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 备份 ID，可通过 [DescribeInstanceBackups ](https://cloud.tencent.com/document/product/239/20011)接口返回的参数 RedisBackupSet 获取。
        public let backupId: String

        /// 下载备份文件的网络限制类型，如果不配置该参数，则使用用户自定义的配置。
        ///
        /// - NoLimit：不限制，腾讯云内外网均可以下载备份文件。
        /// -  LimitOnlyIntranet：仅腾讯云自动分配的内网地址可下载备份文件。
        /// - Customize：指用户自定义的私有网络可下载备份文件。
        public let limitType: String?

        /// 该参数仅支持输入 In，表示自定义的**LimitVpc**可以下载备份文件。
        public let vpcComparisonSymbol: String?

        /// 标识自定义的 LimitIp 地址是否可下载备份文件。
        ///
        /// - In: 自定义的 IP 地址可以下载。默认为 In。
        /// - NotIn: 自定义的 IP 不可以下载。
        public let ipComparisonSymbol: String?

        /// 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，需配置该参数。
        public let limitVpc: [BackupLimitVpcItem]?

        /// 自定义的可下载备份文件的 VPC IP 地址。当参数**LimitType**为**Customize **时，需配置该参数。
        public let limitIp: [String]?

        public init(instanceId: String, backupId: String, limitType: String? = nil, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil) {
            self.instanceId = instanceId
            self.backupId = backupId
            self.limitType = limitType
            self.vpcComparisonSymbol = vpcComparisonSymbol
            self.ipComparisonSymbol = ipComparisonSymbol
            self.limitVpc = limitVpc
            self.limitIp = limitIp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupId = "BackupId"
            case limitType = "LimitType"
            case vpcComparisonSymbol = "VpcComparisonSymbol"
            case ipComparisonSymbol = "IpComparisonSymbol"
            case limitVpc = "LimitVpc"
            case limitIp = "LimitIp"
        }
    }

    /// DescribeBackupUrl返回参数结构体
    public struct DescribeBackupUrlResponse: TCResponse {
        /// 外网下载地址（6小时内链接有效），该字段正在逐步废弃中。
        public let downloadUrl: [String]

        /// 内网下载地址（6小时内链接有效），该字段正在逐步废弃中。
        public let innerDownloadUrl: [String]

        /// 文件名称，该字段正在逐步废弃中。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filenames: [String]?

        /// 备份文件信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupInfos: [BackupDownloadInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case innerDownloadUrl = "InnerDownloadUrl"
            case filenames = "Filenames"
            case backupInfos = "BackupInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询备份Rdb下载地址
    ///
    /// 本接口（DescribeBackupUrl）用于查询备份 Rdb 文件的下载地址。
    @inlinable
    public func describeBackupUrl(_ input: DescribeBackupUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupUrlResponse> {
        self.client.execute(action: "DescribeBackupUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份Rdb下载地址
    ///
    /// 本接口（DescribeBackupUrl）用于查询备份 Rdb 文件的下载地址。
    @inlinable
    public func describeBackupUrl(_ input: DescribeBackupUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupUrlResponse {
        try await self.client.execute(action: "DescribeBackupUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份Rdb下载地址
    ///
    /// 本接口（DescribeBackupUrl）用于查询备份 Rdb 文件的下载地址。
    @inlinable
    public func describeBackupUrl(instanceId: String, backupId: String, limitType: String? = nil, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupUrlResponse> {
        self.describeBackupUrl(.init(instanceId: instanceId, backupId: backupId, limitType: limitType, vpcComparisonSymbol: vpcComparisonSymbol, ipComparisonSymbol: ipComparisonSymbol, limitVpc: limitVpc, limitIp: limitIp), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份Rdb下载地址
    ///
    /// 本接口（DescribeBackupUrl）用于查询备份 Rdb 文件的下载地址。
    @inlinable
    public func describeBackupUrl(instanceId: String, backupId: String, limitType: String? = nil, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupUrlResponse {
        try await self.describeBackupUrl(.init(instanceId: instanceId, backupId: backupId, limitType: limitType, vpcComparisonSymbol: vpcComparisonSymbol, ipComparisonSymbol: ipComparisonSymbol, limitVpc: limitVpc, limitIp: limitIp), region: region, logger: logger, on: eventLoop)
    }
}
