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

extension Bmvpc {
    /// BindIpsToNatGateway请求参数结构体
    public struct BindIpsToNatGatewayRequest: TCRequestModel {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 部分IP信息，子网下只有该部分IP将加入NAT，仅当网关转发模式为IP方式有效
        public let ipInfoSet: [IpInfo]

        public init(natId: String, vpcId: String, ipInfoSet: [IpInfo]) {
            self.natId = natId
            self.vpcId = vpcId
            self.ipInfoSet = ipInfoSet
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
            case ipInfoSet = "IpInfoSet"
        }
    }

    /// BindIpsToNatGateway返回参数结构体
    public struct BindIpsToNatGatewayResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// NAT网关绑定IP
    ///
    /// 可用于将子网的部分IP绑定到NAT网关
    @inlinable
    public func bindIpsToNatGateway(_ input: BindIpsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindIpsToNatGatewayResponse> {
        self.client.execute(action: "BindIpsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定IP
    ///
    /// 可用于将子网的部分IP绑定到NAT网关
    @inlinable
    public func bindIpsToNatGateway(_ input: BindIpsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindIpsToNatGatewayResponse {
        try await self.client.execute(action: "BindIpsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// NAT网关绑定IP
    ///
    /// 可用于将子网的部分IP绑定到NAT网关
    @inlinable
    public func bindIpsToNatGateway(natId: String, vpcId: String, ipInfoSet: [IpInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindIpsToNatGatewayResponse> {
        let input = BindIpsToNatGatewayRequest(natId: natId, vpcId: vpcId, ipInfoSet: ipInfoSet)
        return self.client.execute(action: "BindIpsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定IP
    ///
    /// 可用于将子网的部分IP绑定到NAT网关
    @inlinable
    public func bindIpsToNatGateway(natId: String, vpcId: String, ipInfoSet: [IpInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindIpsToNatGatewayResponse {
        let input = BindIpsToNatGatewayRequest(natId: natId, vpcId: vpcId, ipInfoSet: ipInfoSet)
        return try await self.client.execute(action: "BindIpsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
