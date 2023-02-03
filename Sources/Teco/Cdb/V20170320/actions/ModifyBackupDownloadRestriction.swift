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

extension Cdb {
    /// ModifyBackupDownloadRestriction请求参数结构体
    public struct ModifyBackupDownloadRestrictionRequest: TCRequestModel {
        /// NoLimit 不限制,内外网都可以下载； LimitOnlyIntranet 仅内网可下载； Customize 用户自定义vpc:ip可下载。 只有该值为 Customize 时，才可以设置 LimitVpc 和 LimitIp 。
        public let limitType: String

        /// 该参数仅支持 In， 表示 LimitVpc 指定的vpc可以下载。默认为In。
        public let vpcComparisonSymbol: String?

        /// In: 指定的ip可以下载； NotIn: 指定的ip不可以下载。 默认为In。
        public let ipComparisonSymbol: String?

        /// 限制下载的vpc设置。
        public let limitVpc: [BackupLimitVpcItem]?

        /// 限制下载的ip设置
        public let limitIp: [String]?

        public init(limitType: String, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil) {
            self.limitType = limitType
            self.vpcComparisonSymbol = vpcComparisonSymbol
            self.ipComparisonSymbol = ipComparisonSymbol
            self.limitVpc = limitVpc
            self.limitIp = limitIp
        }

        enum CodingKeys: String, CodingKey {
            case limitType = "LimitType"
            case vpcComparisonSymbol = "VpcComparisonSymbol"
            case ipComparisonSymbol = "IpComparisonSymbol"
            case limitVpc = "LimitVpc"
            case limitIp = "LimitIp"
        }
    }

    /// ModifyBackupDownloadRestriction返回参数结构体
    public struct ModifyBackupDownloadRestrictionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改备份文件的限制下载来源
    ///
    /// 该接口用于修改用户当前地域的备份文件限制下载来源，可以设置内外网均可下载、仅内网可下载，或内网指定的vpc、ip可以下载。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(_ input: ModifyBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupDownloadRestrictionResponse> {
        self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份文件的限制下载来源
    ///
    /// 该接口用于修改用户当前地域的备份文件限制下载来源，可以设置内外网均可下载、仅内网可下载，或内网指定的vpc、ip可以下载。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(_ input: ModifyBackupDownloadRestrictionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupDownloadRestrictionResponse {
        try await self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改备份文件的限制下载来源
    ///
    /// 该接口用于修改用户当前地域的备份文件限制下载来源，可以设置内外网均可下载、仅内网可下载，或内网指定的vpc、ip可以下载。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(limitType: String, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupDownloadRestrictionResponse> {
        let input = ModifyBackupDownloadRestrictionRequest(limitType: limitType, vpcComparisonSymbol: vpcComparisonSymbol, ipComparisonSymbol: ipComparisonSymbol, limitVpc: limitVpc, limitIp: limitIp)
        return self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份文件的限制下载来源
    ///
    /// 该接口用于修改用户当前地域的备份文件限制下载来源，可以设置内外网均可下载、仅内网可下载，或内网指定的vpc、ip可以下载。
    @inlinable @discardableResult
    public func modifyBackupDownloadRestriction(limitType: String, vpcComparisonSymbol: String? = nil, ipComparisonSymbol: String? = nil, limitVpc: [BackupLimitVpcItem]? = nil, limitIp: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupDownloadRestrictionResponse {
        let input = ModifyBackupDownloadRestrictionRequest(limitType: limitType, vpcComparisonSymbol: vpcComparisonSymbol, ipComparisonSymbol: ipComparisonSymbol, limitVpc: limitVpc, limitIp: limitIp)
        return try await self.client.execute(action: "ModifyBackupDownloadRestriction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
