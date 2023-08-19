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
    /// CreateSubnet请求参数结构体
    public struct CreateSubnetRequest: TCRequest {
        /// 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// 子网名称，最大长度不能超过60个字节。
        public let subnetName: String

        /// 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠。
        public let cidrBlock: String

        /// 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        public let zone: String

        /// ECM 地域
        public let ecmRegion: String

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        public init(vpcId: String, subnetName: String, cidrBlock: String, zone: String, ecmRegion: String, tags: [Tag]? = nil) {
            self.vpcId = vpcId
            self.subnetName = subnetName
            self.cidrBlock = cidrBlock
            self.zone = zone
            self.ecmRegion = ecmRegion
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
            case ecmRegion = "EcmRegion"
            case tags = "Tags"
        }
    }

    /// CreateSubnet返回参数结构体
    public struct CreateSubnetResponse: TCResponse {
        /// 子网对象。
        public let subnet: Subnet

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subnet = "Subnet"
            case requestId = "RequestId"
        }
    }

    /// 创建子网
    ///
    /// 创建子网，若创建成功，则此子网会成为此可用区的默认子网。
    @inlinable
    public func createSubnet(_ input: CreateSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetResponse> {
        self.client.execute(action: "CreateSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建子网
    ///
    /// 创建子网，若创建成功，则此子网会成为此可用区的默认子网。
    @inlinable
    public func createSubnet(_ input: CreateSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetResponse {
        try await self.client.execute(action: "CreateSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建子网
    ///
    /// 创建子网，若创建成功，则此子网会成为此可用区的默认子网。
    @inlinable
    public func createSubnet(vpcId: String, subnetName: String, cidrBlock: String, zone: String, ecmRegion: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetResponse> {
        self.createSubnet(.init(vpcId: vpcId, subnetName: subnetName, cidrBlock: cidrBlock, zone: zone, ecmRegion: ecmRegion, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建子网
    ///
    /// 创建子网，若创建成功，则此子网会成为此可用区的默认子网。
    @inlinable
    public func createSubnet(vpcId: String, subnetName: String, cidrBlock: String, zone: String, ecmRegion: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetResponse {
        try await self.createSubnet(.init(vpcId: vpcId, subnetName: subnetName, cidrBlock: cidrBlock, zone: zone, ecmRegion: ecmRegion, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
