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
    /// AssociateNetworkAclSubnets请求参数结构体
    public struct AssociateNetworkAclSubnetsRequest: TCRequestModel {
        /// 网络ACL实例ID。例如：acl-12345678。
        public let networkAclId: String

        /// 子网实例ID数组。例如：[subnet-12345678]。
        public let subnetIds: [String]

        public init(networkAclId: String, subnetIds: [String]) {
            self.networkAclId = networkAclId
            self.subnetIds = subnetIds
        }

        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case subnetIds = "SubnetIds"
        }
    }

    /// AssociateNetworkAclSubnets返回参数结构体
    public struct AssociateNetworkAclSubnetsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 网络ACL关联子网
    ///
    /// 本接口（AssociateNetworkAclSubnets）用于网络ACL关联VPC下的子网。
    @inlinable @discardableResult
    public func associateNetworkAclSubnets(_ input: AssociateNetworkAclSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateNetworkAclSubnetsResponse> {
        self.client.execute(action: "AssociateNetworkAclSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网络ACL关联子网
    ///
    /// 本接口（AssociateNetworkAclSubnets）用于网络ACL关联VPC下的子网。
    @inlinable @discardableResult
    public func associateNetworkAclSubnets(_ input: AssociateNetworkAclSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNetworkAclSubnetsResponse {
        try await self.client.execute(action: "AssociateNetworkAclSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网络ACL关联子网
    ///
    /// 本接口（AssociateNetworkAclSubnets）用于网络ACL关联VPC下的子网。
    @inlinable @discardableResult
    public func associateNetworkAclSubnets(networkAclId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateNetworkAclSubnetsResponse> {
        self.associateNetworkAclSubnets(.init(networkAclId: networkAclId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }

    /// 网络ACL关联子网
    ///
    /// 本接口（AssociateNetworkAclSubnets）用于网络ACL关联VPC下的子网。
    @inlinable @discardableResult
    public func associateNetworkAclSubnets(networkAclId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNetworkAclSubnetsResponse {
        try await self.associateNetworkAclSubnets(.init(networkAclId: networkAclId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }
}
