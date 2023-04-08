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

extension Tke {
    /// AddVpcCniSubnets请求参数结构体
    public struct AddVpcCniSubnetsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 为集群容器网络增加的子网列表
        public let subnetIds: [String]

        /// 集群所属的VPC的ID
        public let vpcId: String

        public init(clusterId: String, subnetIds: [String], vpcId: String) {
            self.clusterId = clusterId
            self.subnetIds = subnetIds
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case subnetIds = "SubnetIds"
            case vpcId = "VpcId"
        }
    }

    /// AddVpcCniSubnets返回参数结构体
    public struct AddVpcCniSubnetsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 增加集群子网
    ///
    /// 针对VPC-CNI模式的集群，增加集群容器网络可使用的子网
    @inlinable @discardableResult
    public func addVpcCniSubnets(_ input: AddVpcCniSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddVpcCniSubnetsResponse> {
        self.client.execute(action: "AddVpcCniSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加集群子网
    ///
    /// 针对VPC-CNI模式的集群，增加集群容器网络可使用的子网
    @inlinable @discardableResult
    public func addVpcCniSubnets(_ input: AddVpcCniSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddVpcCniSubnetsResponse {
        try await self.client.execute(action: "AddVpcCniSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加集群子网
    ///
    /// 针对VPC-CNI模式的集群，增加集群容器网络可使用的子网
    @inlinable @discardableResult
    public func addVpcCniSubnets(clusterId: String, subnetIds: [String], vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddVpcCniSubnetsResponse> {
        self.addVpcCniSubnets(.init(clusterId: clusterId, subnetIds: subnetIds, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 增加集群子网
    ///
    /// 针对VPC-CNI模式的集群，增加集群容器网络可使用的子网
    @inlinable @discardableResult
    public func addVpcCniSubnets(clusterId: String, subnetIds: [String], vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddVpcCniSubnetsResponse {
        try await self.addVpcCniSubnets(.init(clusterId: clusterId, subnetIds: subnetIds, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
