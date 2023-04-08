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
    /// DeleteNatGateway请求参数结构体
    public struct DeleteNatGatewayRequest: TCRequestModel {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        public init(natId: String, vpcId: String) {
            self.natId = natId
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
        }
    }

    /// DeleteNatGateway返回参数结构体
    public struct DeleteNatGatewayResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除NAT网关
    @inlinable
    public func deleteNatGateway(_ input: DeleteNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNatGatewayResponse> {
        self.client.execute(action: "DeleteNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除NAT网关
    @inlinable
    public func deleteNatGateway(_ input: DeleteNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNatGatewayResponse {
        try await self.client.execute(action: "DeleteNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除NAT网关
    @inlinable
    public func deleteNatGateway(natId: String, vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNatGatewayResponse> {
        self.deleteNatGateway(.init(natId: natId, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除NAT网关
    @inlinable
    public func deleteNatGateway(natId: String, vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNatGatewayResponse {
        try await self.deleteNatGateway(.init(natId: natId, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
