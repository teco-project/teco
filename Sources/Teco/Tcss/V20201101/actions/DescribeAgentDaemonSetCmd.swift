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

extension Tcss {
    /// DescribeAgentDaemonSetCmd请求参数结构体
    public struct DescribeAgentDaemonSetCmdRequest: TCRequestModel {
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

        public init(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil) {
            self.isCloud = isCloud
            self.netType = netType
            self.regionCode = regionCode
            self.vpcId = vpcId
            self.expireDate = expireDate
        }

        enum CodingKeys: String, CodingKey {
            case isCloud = "IsCloud"
            case netType = "NetType"
            case regionCode = "RegionCode"
            case vpcId = "VpcId"
            case expireDate = "ExpireDate"
        }
    }

    /// DescribeAgentDaemonSetCmd返回参数结构体
    public struct DescribeAgentDaemonSetCmdResponse: TCResponseModel {
        /// 安装命令
        public let command: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case command = "Command"
            case requestId = "RequestId"
        }
    }

    /// 查询平行容器安装命令
    @inlinable
    public func describeAgentDaemonSetCmd(_ input: DescribeAgentDaemonSetCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDaemonSetCmdResponse> {
        self.client.execute(action: "DescribeAgentDaemonSetCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询平行容器安装命令
    @inlinable
    public func describeAgentDaemonSetCmd(_ input: DescribeAgentDaemonSetCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDaemonSetCmdResponse {
        try await self.client.execute(action: "DescribeAgentDaemonSetCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询平行容器安装命令
    @inlinable
    public func describeAgentDaemonSetCmd(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDaemonSetCmdResponse> {
        self.describeAgentDaemonSetCmd(.init(isCloud: isCloud, netType: netType, regionCode: regionCode, vpcId: vpcId, expireDate: expireDate), region: region, logger: logger, on: eventLoop)
    }

    /// 查询平行容器安装命令
    @inlinable
    public func describeAgentDaemonSetCmd(isCloud: Bool, netType: String, regionCode: String? = nil, vpcId: String? = nil, expireDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDaemonSetCmdResponse {
        try await self.describeAgentDaemonSetCmd(.init(isCloud: isCloud, netType: netType, regionCode: regionCode, vpcId: vpcId, expireDate: expireDate), region: region, logger: logger, on: eventLoop)
    }
}
