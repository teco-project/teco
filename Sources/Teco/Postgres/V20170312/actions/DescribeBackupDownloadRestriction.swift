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
    /// DescribeBackupDownloadRestriction请求参数结构体
    public struct DescribeBackupDownloadRestrictionRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBackupDownloadRestriction返回参数结构体
    public struct DescribeBackupDownloadRestrictionResponse: TCResponseModel {
        /// 备份文件下载限制类型，NONE 无限制，内外网都可以下载；INTRANET 只允许内网下载；CUSTOMIZE 自定义限制下载的vpc或ip。
        public let restrictionType: String

        /// vpc限制效力，ALLOW 允许；DENY 拒绝。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcRestrictionEffect: String?

        /// 允许或拒绝下载备份文件的vpcId列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcIdSet: [String]?

        /// ip限制效力，ALLOW 允许；DENY 拒绝。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipRestrictionEffect: String?

        /// 允许或拒绝下载备份文件的ip列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case restrictionType = "RestrictionType"
            case vpcRestrictionEffect = "VpcRestrictionEffect"
            case vpcIdSet = "VpcIdSet"
            case ipRestrictionEffect = "IpRestrictionEffect"
            case ipSet = "IpSet"
            case requestId = "RequestId"
        }
    }

    /// 查询备份文件下载限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询备份文件下载限制。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份文件下载限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询备份文件下载限制。
    @inlinable
    public func describeBackupDownloadRestriction(_ input: DescribeBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.client.execute(action: "DescribeBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份文件下载限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询备份文件下载限制。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadRestrictionResponse> {
        self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份文件下载限制
    ///
    /// 本接口（DescribeBackupDownloadRestriction）用于查询备份文件下载限制。
    @inlinable
    public func describeBackupDownloadRestriction(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadRestrictionResponse {
        try await self.describeBackupDownloadRestriction(.init(), region: region, logger: logger, on: eventLoop)
    }
}
