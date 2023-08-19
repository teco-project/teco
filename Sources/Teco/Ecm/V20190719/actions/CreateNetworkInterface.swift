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
    /// CreateNetworkInterface请求参数结构体
    public struct CreateNetworkInterfaceRequest: TCRequest {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// 弹性网卡名称，最大长度不能超过60个字节。
        public let networkInterfaceName: String

        /// 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        public let subnetId: String

        /// ECM 地域，形如ap-xian-ecm。
        public let ecmRegion: String

        /// 弹性网卡描述，可任意命名，但不得超过60个字符。
        public let networkInterfaceDescription: String?

        /// 新申请的内网IP地址个数，内网IP地址个数总和不能超过配额数。
        public let secondaryPrivateIpAddressCount: UInt64?

        /// 指定绑定的安全组，例如：['sg-1dd51d']。
        public let securityGroupIds: [String]?

        /// 指定的内网IP信息，单次最多指定10个。
        public let privateIpAddresses: [PrivateIpAddressSpecification]?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        public init(vpcId: String, networkInterfaceName: String, subnetId: String, ecmRegion: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil) {
            self.vpcId = vpcId
            self.networkInterfaceName = networkInterfaceName
            self.subnetId = subnetId
            self.ecmRegion = ecmRegion
            self.networkInterfaceDescription = networkInterfaceDescription
            self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
            self.securityGroupIds = securityGroupIds
            self.privateIpAddresses = privateIpAddresses
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case networkInterfaceName = "NetworkInterfaceName"
            case subnetId = "SubnetId"
            case ecmRegion = "EcmRegion"
            case networkInterfaceDescription = "NetworkInterfaceDescription"
            case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
            case securityGroupIds = "SecurityGroupIds"
            case privateIpAddresses = "PrivateIpAddresses"
            case tags = "Tags"
        }
    }

    /// CreateNetworkInterface返回参数结构体
    public struct CreateNetworkInterfaceResponse: TCResponse {
        /// 弹性网卡实例。
        public let networkInterface: NetworkInterface

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkInterface = "NetworkInterface"
            case requestId = "RequestId"
        }
    }

    /// 创建弹性网卡
    @inlinable
    public func createNetworkInterface(_ input: CreateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkInterfaceResponse> {
        self.client.execute(action: "CreateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡
    @inlinable
    public func createNetworkInterface(_ input: CreateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkInterfaceResponse {
        try await self.client.execute(action: "CreateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建弹性网卡
    @inlinable
    public func createNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, ecmRegion: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkInterfaceResponse> {
        self.createNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, ecmRegion: ecmRegion, networkInterfaceDescription: networkInterfaceDescription, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, securityGroupIds: securityGroupIds, privateIpAddresses: privateIpAddresses, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡
    @inlinable
    public func createNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, ecmRegion: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkInterfaceResponse {
        try await self.createNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, ecmRegion: ecmRegion, networkInterfaceDescription: networkInterfaceDescription, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, securityGroupIds: securityGroupIds, privateIpAddresses: privateIpAddresses, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
