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

extension Tcss {
    /// DescribeAgentInstallCommand请求参数结构体
    public struct DescribeAgentInstallCommandRequest: TCRequestModel {
        /// 是否是腾讯云
        public let isCloud: Bool

        /// 网络类型：basic-基础网络，private-VPC, public-公网，direct-专线
        public let netType: String

        /// 地域标示, NetType=direct时必填
        public let regionCode: String?

        /// VpcId, NetType=direct时必填
        public let vpcId: String?

        /// 命令有效期，非腾讯云时必填
        public let expireDate: String?

        /// 标签ID列表，IsCloud=false时才会生效
        public let tagIds: [UInt64]?

        public init(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil, tagIds: [UInt64]? = nil) {
            self.isCloud = isCloud
            self.netType = netType
            self.regionCode = regionCode
            self.vpcId = vpcId
            self.expireDate = expireDate
            self.tagIds = tagIds
        }

        enum CodingKeys: String, CodingKey {
            case isCloud = "IsCloud"
            case netType = "NetType"
            case regionCode = "RegionCode"
            case vpcId = "VpcId"
            case expireDate = "ExpireDate"
            case tagIds = "TagIds"
        }
    }

    /// DescribeAgentInstallCommand返回参数结构体
    public struct DescribeAgentInstallCommandResponse: TCResponseModel {
        /// linux系统安装命令
        public let linuxCommand: String

        /// windows系统安装命令（windows2008及以上）
        public let windowsCommand: String

        /// windows系统安装命令第一步（windows2003）
        public let windowsStepOne: String

        /// windows系统安装命令第二步（windows2003）
        public let windowsStepTwo: String

        /// windows版agent下载链接
        public let windowsDownloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case linuxCommand = "LinuxCommand"
            case windowsCommand = "WindowsCommand"
            case windowsStepOne = "WindowsStepOne"
            case windowsStepTwo = "WindowsStepTwo"
            case windowsDownloadUrl = "WindowsDownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询agent安装命令
    @inlinable
    public func describeAgentInstallCommand(_ input: DescribeAgentInstallCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentInstallCommandResponse> {
        self.client.execute(action: "DescribeAgentInstallCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询agent安装命令
    @inlinable
    public func describeAgentInstallCommand(_ input: DescribeAgentInstallCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentInstallCommandResponse {
        try await self.client.execute(action: "DescribeAgentInstallCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询agent安装命令
    @inlinable
    public func describeAgentInstallCommand(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil, tagIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentInstallCommandResponse> {
        self.describeAgentInstallCommand(.init(isCloud: isCloud, netType: netType, regionCode: regionCode, vpcId: vpcId, expireDate: expireDate, tagIds: tagIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询agent安装命令
    @inlinable
    public func describeAgentInstallCommand(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil, tagIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentInstallCommandResponse {
        try await self.describeAgentInstallCommand(.init(isCloud: isCloud, netType: netType, regionCode: regionCode, vpcId: vpcId, expireDate: expireDate, tagIds: tagIds), region: region, logger: logger, on: eventLoop)
    }
}
