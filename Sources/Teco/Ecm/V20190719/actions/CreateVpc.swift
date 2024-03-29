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

extension Ecm {
    /// CreateVpc请求参数结构体
    public struct CreateVpcRequest: TCRequest {
        /// vpc名称，最大长度不能超过60个字节。
        public let vpcName: String

        /// vpc的cidr，只能为10.*.0.0/16，172.[16-31].0.0/16，192.168.0.0/16这三个内网网段内。
        public let cidrBlock: String

        /// ECM 地域
        public let ecmRegion: String

        /// 是否开启组播。true: 开启, false: 不开启。暂不支持
        public let enableMulticast: String?

        /// DNS地址，最多支持4个，暂不支持
        public let dnsServers: [String]?

        /// 域名，暂不支持
        public let domainName: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        /// 描述信息
        public let description: String?

        /// 网络运营商类型 取值范围:'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        public let ispTypes: [ISPTypeItem]?

        public init(vpcName: String, cidrBlock: String, ecmRegion: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil, description: String? = nil, ispTypes: [ISPTypeItem]? = nil) {
            self.vpcName = vpcName
            self.cidrBlock = cidrBlock
            self.ecmRegion = ecmRegion
            self.enableMulticast = enableMulticast
            self.dnsServers = dnsServers
            self.domainName = domainName
            self.tags = tags
            self.description = description
            self.ispTypes = ispTypes
        }

        enum CodingKeys: String, CodingKey {
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case ecmRegion = "EcmRegion"
            case enableMulticast = "EnableMulticast"
            case dnsServers = "DnsServers"
            case domainName = "DomainName"
            case tags = "Tags"
            case description = "Description"
            case ispTypes = "ISPTypes"
        }
    }

    /// CreateVpc返回参数结构体
    public struct CreateVpcResponse: TCResponse {
        /// Vpc对象。
        public let vpc: VpcInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpc = "Vpc"
            case requestId = "RequestId"
        }
    }

    /// 创建VPC
    ///
    /// 创建私有网络
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcResponse> {
        self.client.execute(action: "CreateVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建VPC
    ///
    /// 创建私有网络
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcResponse {
        try await self.client.execute(action: "CreateVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建VPC
    ///
    /// 创建私有网络
    @inlinable
    public func createVpc(vpcName: String, cidrBlock: String, ecmRegion: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil, description: String? = nil, ispTypes: [ISPTypeItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcResponse> {
        self.createVpc(.init(vpcName: vpcName, cidrBlock: cidrBlock, ecmRegion: ecmRegion, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName, tags: tags, description: description, ispTypes: ispTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 创建VPC
    ///
    /// 创建私有网络
    @inlinable
    public func createVpc(vpcName: String, cidrBlock: String, ecmRegion: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil, description: String? = nil, ispTypes: [ISPTypeItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcResponse {
        try await self.createVpc(.init(vpcName: vpcName, cidrBlock: cidrBlock, ecmRegion: ecmRegion, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName, tags: tags, description: description, ispTypes: ispTypes), region: region, logger: logger, on: eventLoop)
    }
}
