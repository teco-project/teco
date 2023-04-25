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
    /// DescribeBackupDownloadRestriction请求参数结构体
    public struct DescribeBackupDownloadRestrictionRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBackupDownloadRestriction返回参数结构体
    public struct DescribeBackupDownloadRestrictionResponse: TCResponseModel {
        /// 下载备份文件的网络限制类型：
        ///
        /// - NoLimit：不限制，腾讯云内外网均可以下载备份文件。
        /// -  LimitOnlyIntranet：仅腾讯云自动分配的内网地址可下载备份文件。
        /// - Customize：指用户自定义的私有网络可下载备份文件。
        public let limitType: String

        /// 该参数仅支持输入 In，表示自定义的**LimitVpc**可以下载备份文件。
        public let vpcComparisonSymbol: String

        /// 标识自定义的 LimitIp 地址是否可下载备份文件。
        ///
        /// - In: 自定义的 IP 地址可以下载。
        /// - NotIn: 自定义的 IP 不可以下载。
        public let ipComparisonSymbol: String

        /// 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，显示该参数。
        public let limitVpc: [BackupLimitVpcItem]

        /// 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，显示该参数。
        public let limitIp: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case limitType = "LimitType"
            case vpcComparisonSymbol = "VpcComparisonSymbol"
            case ipComparisonSymbol = "IpComparisonSymbol"
            case limitVpc = "LimitVpc"
            case limitIp = "LimitIp"
            case requestId = "RequestId"
        }
    }

    /// 查询备份文件的下载来源限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询当前地域数据库备份文件的下载地址。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份文件的下载来源限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询当前地域数据库备份文件的下载地址。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份文件的下载来源限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询当前地域数据库备份文件的下载地址。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份文件的下载来源限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询当前地域数据库备份文件的下载地址。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }
}
