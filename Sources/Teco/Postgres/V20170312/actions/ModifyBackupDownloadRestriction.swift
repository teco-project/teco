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
    /// ModifyBackupDownloadRestriction请求参数结构体
    public struct ModifyBackupDownloadRestrictionRequest: TCRequest {
        /// 备份文件下载限制类型，NONE 无限制，内外网都可以下载；INTRANET 只允许内网下载；CUSTOMIZE 自定义限制下载的vpc或ip。
        public let restrictionType: String

        /// vpc限制效力，ALLOW 允许；DENY 拒绝。
        public let vpcRestrictionEffect: String?

        /// 允许或拒绝下载备份文件的vpcId列表。
        public let vpcIdSet: [String]?

        /// ip限制效力，ALLOW 允许；DENY 拒绝。
        public let ipRestrictionEffect: String?

        /// 允许或拒绝下载备份文件的ip列表。
        public let ipSet: [String]?

        public init(restrictionType: String, vpcRestrictionEffect: String? = nil, vpcIdSet: [String]? = nil, ipRestrictionEffect: String? = nil, ipSet: [String]? = nil) {
            self.restrictionType = restrictionType
            self.vpcRestrictionEffect = vpcRestrictionEffect
            self.vpcIdSet = vpcIdSet
            self.ipRestrictionEffect = ipRestrictionEffect
            self.ipSet = ipSet
        }

        enum CodingKeys: String, CodingKey {
            case restrictionType = "RestrictionType"
            case vpcRestrictionEffect = "VpcRestrictionEffect"
            case vpcIdSet = "VpcIdSet"
            case ipRestrictionEffect = "IpRestrictionEffect"
            case ipSet = "IpSet"
        }
    }

    /// ModifyBackupDownloadRestriction返回参数结构体
    public struct ModifyBackupDownloadRestrictionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改备份文件下载限制
    ///
    /// 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载限制。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(_ input: ModifyBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupDownloadRestrictionResponse> {
        self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份文件下载限制
    ///
    /// 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载限制。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(_ input: ModifyBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupDownloadRestrictionResponse {
        try await self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改备份文件下载限制
    ///
    /// 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载限制。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(restrictionType: String, vpcRestrictionEffect: String? = nil, vpcIdSet: [String]? = nil, ipRestrictionEffect: String? = nil, ipSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupDownloadRestrictionResponse> {
        self.modifyBackupDownloadRestriction(.init(restrictionType: restrictionType, vpcRestrictionEffect: vpcRestrictionEffect, vpcIdSet: vpcIdSet, ipRestrictionEffect: ipRestrictionEffect, ipSet: ipSet), region: region, logger: logger, on: eventLoop)
    }

    /// 修改备份文件下载限制
    ///
    /// 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载限制。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(restrictionType: String, vpcRestrictionEffect: String? = nil, vpcIdSet: [String]? = nil, ipRestrictionEffect: String? = nil, ipSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupDownloadRestrictionResponse {
        try await self.modifyBackupDownloadRestriction(.init(restrictionType: restrictionType, vpcRestrictionEffect: vpcRestrictionEffect, vpcIdSet: vpcIdSet, ipRestrictionEffect: ipRestrictionEffect, ipSet: ipSet), region: region, logger: logger, on: eventLoop)
    }
}
