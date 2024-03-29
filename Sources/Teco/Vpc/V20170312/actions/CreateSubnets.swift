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

extension Vpc {
    /// CreateSubnets请求参数结构体
    public struct CreateSubnetsRequest: TCRequest {
        /// `VPC`实例`ID`。形如：`vpc-6v2ht8q5`。
        public let vpcId: String

        /// 子网对象列表。
        public let subnets: [SubnetInput]

        /// 指定绑定的标签列表，注意这里的标签集合为列表中所有子网对象所共享，不能为每个子网对象单独指定标签，例如：[{"Key": "city", "Value": "shanghai"}]。
        public let tags: [Tag]?

        /// 需要增加到的CDC实例ID。
        public let cdcId: String?

        public init(vpcId: String, subnets: [SubnetInput], tags: [Tag]? = nil, cdcId: String? = nil) {
            self.vpcId = vpcId
            self.subnets = subnets
            self.tags = tags
            self.cdcId = cdcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnets = "Subnets"
            case tags = "Tags"
            case cdcId = "CdcId"
        }
    }

    /// CreateSubnets返回参数结构体
    public struct CreateSubnetsResponse: TCResponse {
        /// 新创建的子网列表。
        public let subnetSet: [Subnet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subnetSet = "SubnetSet"
            case requestId = "RequestId"
        }
    }

    /// 批量创建子网
    ///
    /// 本接口（CreateSubnets）用于批量创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnets(_ input: CreateSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetsResponse> {
        self.client.execute(action: "CreateSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建子网
    ///
    /// 本接口（CreateSubnets）用于批量创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnets(_ input: CreateSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetsResponse {
        try await self.client.execute(action: "CreateSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建子网
    ///
    /// 本接口（CreateSubnets）用于批量创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnets(vpcId: String, subnets: [SubnetInput], tags: [Tag]? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubnetsResponse> {
        self.createSubnets(.init(vpcId: vpcId, subnets: subnets, tags: tags, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建子网
    ///
    /// 本接口（CreateSubnets）用于批量创建子网。
    /// * 创建子网前必须创建好 VPC。
    /// * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
    /// * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
    /// * 同一个VPC内，多个子网的网段不能重叠。
    /// * 子网创建后会自动关联到默认路由表。
    /// * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createSubnets(vpcId: String, subnets: [SubnetInput], tags: [Tag]? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetsResponse {
        try await self.createSubnets(.init(vpcId: vpcId, subnets: subnets, tags: tags, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }
}
