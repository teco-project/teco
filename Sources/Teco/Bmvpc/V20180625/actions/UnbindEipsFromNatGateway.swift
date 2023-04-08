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
    /// UnbindEipsFromNatGateway请求参数结构体
    public struct UnbindEipsFromNatGatewayRequest: TCRequestModel {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 已分配的EIP列表
        public let assignedEips: [String]

        public init(natId: String, vpcId: String, assignedEips: [String]) {
            self.natId = natId
            self.vpcId = vpcId
            self.assignedEips = assignedEips
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
            case assignedEips = "AssignedEips"
        }
    }

    /// UnbindEipsFromNatGateway返回参数结构体
    public struct UnbindEipsFromNatGatewayResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// NAT网关解绑EIP
    ///
    /// NAT网关解绑该EIP后，NAT网关将不会使用该EIP作为访问外网的源IP地址
    @inlinable
    public func unbindEipsFromNatGateway(_ input: UnbindEipsFromNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindEipsFromNatGatewayResponse> {
        self.client.execute(action: "UnbindEipsFromNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关解绑EIP
    ///
    /// NAT网关解绑该EIP后，NAT网关将不会使用该EIP作为访问外网的源IP地址
    @inlinable
    public func unbindEipsFromNatGateway(_ input: UnbindEipsFromNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindEipsFromNatGatewayResponse {
        try await self.client.execute(action: "UnbindEipsFromNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// NAT网关解绑EIP
    ///
    /// NAT网关解绑该EIP后，NAT网关将不会使用该EIP作为访问外网的源IP地址
    @inlinable
    public func unbindEipsFromNatGateway(natId: String, vpcId: String, assignedEips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindEipsFromNatGatewayResponse> {
        self.unbindEipsFromNatGateway(.init(natId: natId, vpcId: vpcId, assignedEips: assignedEips), region: region, logger: logger, on: eventLoop)
    }

    /// NAT网关解绑EIP
    ///
    /// NAT网关解绑该EIP后，NAT网关将不会使用该EIP作为访问外网的源IP地址
    @inlinable
    public func unbindEipsFromNatGateway(natId: String, vpcId: String, assignedEips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindEipsFromNatGatewayResponse {
        try await self.unbindEipsFromNatGateway(.init(natId: natId, vpcId: vpcId, assignedEips: assignedEips), region: region, logger: logger, on: eventLoop)
    }
}
