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

import TecoCore

extension Cdb {
    /// DescribeBackupDownloadRestriction请求参数结构体
    public struct DescribeBackupDownloadRestrictionRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBackupDownloadRestriction返回参数结构体
    public struct DescribeBackupDownloadRestrictionResponse: TCResponseModel {
        /// NoLimit 不限制,内外网都可以下载； LimitOnlyIntranet 仅内网可下载； Customize 用户自定义vpc:ip可下载。 只有该值为 Customize 时， LimitVpc 和 LimitIp 才有意义。
        public let limitType: String

        /// 该参数仅支持 In， 表示 LimitVpc 指定的vpc可以下载。
        public let vpcComparisonSymbol: String

        /// In: 指定的ip可以下载； NotIn: 指定的ip不可以下载。
        public let ipComparisonSymbol: String

        /// 限制下载的vpc设置。
        public let limitVpc: [BackupLimitVpcItem]

        /// 限制下载的ip设置。
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

    /// 查询备份文件下载源限制
    ///
    /// 该接口用户查询当前地域用户设置的默认备份下载来源限制。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份文件下载源限制
    ///
    /// 该接口用户查询当前地域用户设置的默认备份下载来源限制。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份文件下载源限制
    ///
    /// 该接口用户查询当前地域用户设置的默认备份下载来源限制。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份文件下载源限制
    ///
    /// 该接口用户查询当前地域用户设置的默认备份下载来源限制。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }
}
