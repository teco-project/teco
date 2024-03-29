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

extension Bmvpc {
    /// BindSubnetsToNatGateway请求参数结构体
    public struct BindSubnetsToNatGatewayRequest: TCRequest {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 子网ID列表，子网下全部IP将加入NAT，不区分网关转发方式
        public let subnetIds: [String]

        public init(natId: String, vpcId: String, subnetIds: [String]) {
            self.natId = natId
            self.vpcId = vpcId
            self.subnetIds = subnetIds
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
            case subnetIds = "SubnetIds"
        }
    }

    /// BindSubnetsToNatGateway返回参数结构体
    public struct BindSubnetsToNatGatewayResponse: TCResponse {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// NAT网关绑定子网
    ///
    /// NAT网关绑定子网后，该子网内全部IP可出公网
    @inlinable
    public func bindSubnetsToNatGateway(_ input: BindSubnetsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindSubnetsToNatGatewayResponse> {
        self.client.execute(action: "BindSubnetsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定子网
    ///
    /// NAT网关绑定子网后，该子网内全部IP可出公网
    @inlinable
    public func bindSubnetsToNatGateway(_ input: BindSubnetsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindSubnetsToNatGatewayResponse {
        try await self.client.execute(action: "BindSubnetsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// NAT网关绑定子网
    ///
    /// NAT网关绑定子网后，该子网内全部IP可出公网
    @inlinable
    public func bindSubnetsToNatGateway(natId: String, vpcId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindSubnetsToNatGatewayResponse> {
        self.bindSubnetsToNatGateway(.init(natId: natId, vpcId: vpcId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定子网
    ///
    /// NAT网关绑定子网后，该子网内全部IP可出公网
    @inlinable
    public func bindSubnetsToNatGateway(natId: String, vpcId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindSubnetsToNatGatewayResponse {
        try await self.bindSubnetsToNatGateway(.init(natId: natId, vpcId: vpcId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }
}
