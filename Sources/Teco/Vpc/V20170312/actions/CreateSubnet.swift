//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Vpc {
    /// CreateSubnet请求参数结构体
    public struct CreateSubnetRequest: TCRequestModel {
        /// 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// 子网名称，最大长度不能超过60个字节。
        public let subnetName: String

        /// 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠。
        public let cidrBlock: String

        /// 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        public let zone: String

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        /// CDC实例ID。
        public let cdcId: String?

        public init(vpcId: String, subnetName: String, cidrBlock: String, zone: String, tags: [Tag]? = nil, cdcId: String? = nil) {
            self.vpcId = vpcId
            self.subnetName = subnetName
            self.cidrBlock = cidrBlock
            self.zone = zone
            self.tags = tags
            self.cdcId = cdcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
            case tags = "Tags"
            case cdcId = "CdcId"
        }
    }

    /// CreateSubnet返回参数结构体
    public struct CreateSubnetResponse: TCResponseModel {
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
    /// 本接口(CreateSubnet)用于创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnet(_ input: CreateSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetResponse> {
        self.client.execute(action: "CreateSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建子网
    ///
    /// 本接口(CreateSubnet)用于创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnet(_ input: CreateSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetResponse {
        try await self.client.execute(action: "CreateSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建子网
    ///
    /// 本接口(CreateSubnet)用于创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnet(vpcId: String, subnetName: String, cidrBlock: String, zone: String, tags: [Tag]? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetResponse> {
        self.createSubnet(CreateSubnetRequest(vpcId: vpcId, subnetName: subnetName, cidrBlock: cidrBlock, zone: zone, tags: tags, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建子网
    ///
    /// 本接口(CreateSubnet)用于创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnet(vpcId: String, subnetName: String, cidrBlock: String, zone: String, tags: [Tag]? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetResponse {
        try await self.createSubnet(CreateSubnetRequest(vpcId: vpcId, subnetName: subnetName, cidrBlock: cidrBlock, zone: zone, tags: tags, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }
}
