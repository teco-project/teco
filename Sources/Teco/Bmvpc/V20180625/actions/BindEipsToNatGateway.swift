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
    /// BindEipsToNatGateway请求参数结构体
    public struct BindEipsToNatGatewayRequest: TCRequestModel {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 已分配的EIP列表；AssignedEips和AutoAllocEipNum至少输入一个
        public let assignedEips: [String]?

        /// 新建EIP数目，系统将会按您的要求生产该数目个数EIP；AssignedEips和AutoAllocEipNum至少输入一个
        public let autoAllocEipNum: UInt64?

        public init(natId: String, vpcId: String, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil) {
            self.natId = natId
            self.vpcId = vpcId
            self.assignedEips = assignedEips
            self.autoAllocEipNum = autoAllocEipNum
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
            case assignedEips = "AssignedEips"
            case autoAllocEipNum = "AutoAllocEipNum"
        }
    }

    /// BindEipsToNatGateway返回参数结构体
    public struct BindEipsToNatGatewayResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// NAT网关绑定EIP
    ///
    /// NAT网关绑定EIP接口，可将EIP绑定到NAT网关，该EIP作为访问外网的源IP地址，将流量发送到Internet
    @inlinable
    public func bindEipsToNatGateway(_ input: BindEipsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEipsToNatGatewayResponse> {
        self.client.execute(action: "BindEipsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定EIP
    ///
    /// NAT网关绑定EIP接口，可将EIP绑定到NAT网关，该EIP作为访问外网的源IP地址，将流量发送到Internet
    @inlinable
    public func bindEipsToNatGateway(_ input: BindEipsToNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEipsToNatGatewayResponse {
        try await self.client.execute(action: "BindEipsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// NAT网关绑定EIP
    ///
    /// NAT网关绑定EIP接口，可将EIP绑定到NAT网关，该EIP作为访问外网的源IP地址，将流量发送到Internet
    @inlinable
    public func bindEipsToNatGateway(natId: String, vpcId: String, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEipsToNatGatewayResponse> {
        let input = BindEipsToNatGatewayRequest(natId: natId, vpcId: vpcId, assignedEips: assignedEips, autoAllocEipNum: autoAllocEipNum)
        return self.client.execute(action: "BindEipsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定EIP
    ///
    /// NAT网关绑定EIP接口，可将EIP绑定到NAT网关，该EIP作为访问外网的源IP地址，将流量发送到Internet
    @inlinable
    public func bindEipsToNatGateway(natId: String, vpcId: String, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEipsToNatGatewayResponse {
        let input = BindEipsToNatGatewayRequest(natId: natId, vpcId: vpcId, assignedEips: assignedEips, autoAllocEipNum: autoAllocEipNum)
        return try await self.client.execute(action: "BindEipsToNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
