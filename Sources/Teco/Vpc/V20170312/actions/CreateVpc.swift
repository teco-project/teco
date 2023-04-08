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

extension Vpc {
    /// CreateVpc请求参数结构体
    public struct CreateVpcRequest: TCRequestModel {
        /// vpc名称，最大长度不能超过60个字节。
        public let vpcName: String

        /// vpc的cidr，仅能在10.0.0.0/12，172.16.0.0/12，192.168.0.0/16这三个内网网段内。
        public let cidrBlock: String

        /// 是否开启组播。true: 开启, false: 不开启。
        public let enableMulticast: String?

        /// DNS地址，最多支持4个。
        public let dnsServers: [String]?

        /// DHCP使用的域名。
        public let domainName: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]。
        public let tags: [Tag]?

        public init(vpcName: String, cidrBlock: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil) {
            self.vpcName = vpcName
            self.cidrBlock = cidrBlock
            self.enableMulticast = enableMulticast
            self.dnsServers = dnsServers
            self.domainName = domainName
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case enableMulticast = "EnableMulticast"
            case dnsServers = "DnsServers"
            case domainName = "DomainName"
            case tags = "Tags"
        }
    }

    /// CreateVpc返回参数结构体
    public struct CreateVpcResponse: TCResponseModel {
        /// Vpc对象。
        public let vpc: Vpc

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpc = "Vpc"
            case requestId = "RequestId"
        }
    }

    /// 创建VPC
    ///
    /// 本接口（CreateVpc）用于创建私有网络（VPC）。
    /// * 用户可以创建的最小网段子网掩码为28（有16个IP地址），10.0.0.0/12，172.16.0.0/12最大网段子网掩码为12（1,048,576个IP地址），192.168.0.0/16最大网段子网掩码为16（65,536个IP地址）如果需要规划VPC网段请参见[网络规划](https://cloud.tencent.com/document/product/215/30313)。
    /// * 同一个地域能创建的VPC资源个数也是有限制的，详见 <a href="https://cloud.tencent.com/doc/product/215/537" title="VPC使用限制">VPC使用限制</a>，如果需要申请更多资源，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
    /// * 创建VPC同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcResponse> {
        self.client.execute(action: "CreateVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建VPC
    ///
    /// 本接口（CreateVpc）用于创建私有网络（VPC）。
    /// * 用户可以创建的最小网段子网掩码为28（有16个IP地址），10.0.0.0/12，172.16.0.0/12最大网段子网掩码为12（1,048,576个IP地址），192.168.0.0/16最大网段子网掩码为16（65,536个IP地址）如果需要规划VPC网段请参见[网络规划](https://cloud.tencent.com/document/product/215/30313)。
    /// * 同一个地域能创建的VPC资源个数也是有限制的，详见 <a href="https://cloud.tencent.com/doc/product/215/537" title="VPC使用限制">VPC使用限制</a>，如果需要申请更多资源，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
    /// * 创建VPC同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcResponse {
        try await self.client.execute(action: "CreateVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建VPC
    ///
    /// 本接口（CreateVpc）用于创建私有网络（VPC）。
    /// * 用户可以创建的最小网段子网掩码为28（有16个IP地址），10.0.0.0/12，172.16.0.0/12最大网段子网掩码为12（1,048,576个IP地址），192.168.0.0/16最大网段子网掩码为16（65,536个IP地址）如果需要规划VPC网段请参见[网络规划](https://cloud.tencent.com/document/product/215/30313)。
    /// * 同一个地域能创建的VPC资源个数也是有限制的，详见 <a href="https://cloud.tencent.com/doc/product/215/537" title="VPC使用限制">VPC使用限制</a>，如果需要申请更多资源，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
    /// * 创建VPC同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createVpc(vpcName: String, cidrBlock: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcResponse> {
        self.createVpc(.init(vpcName: vpcName, cidrBlock: cidrBlock, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建VPC
    ///
    /// 本接口（CreateVpc）用于创建私有网络（VPC）。
    /// * 用户可以创建的最小网段子网掩码为28（有16个IP地址），10.0.0.0/12，172.16.0.0/12最大网段子网掩码为12（1,048,576个IP地址），192.168.0.0/16最大网段子网掩码为16（65,536个IP地址）如果需要规划VPC网段请参见[网络规划](https://cloud.tencent.com/document/product/215/30313)。
    /// * 同一个地域能创建的VPC资源个数也是有限制的，详见 <a href="https://cloud.tencent.com/doc/product/215/537" title="VPC使用限制">VPC使用限制</a>，如果需要申请更多资源，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
    /// * 创建VPC同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createVpc(vpcName: String, cidrBlock: String, enableMulticast: String? = nil, dnsServers: [String]? = nil, domainName: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcResponse {
        try await self.createVpc(.init(vpcName: vpcName, cidrBlock: cidrBlock, enableMulticast: enableMulticast, dnsServers: dnsServers, domainName: domainName, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
