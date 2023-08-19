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
    /// UpgradeNatGateway请求参数结构体
    public struct UpgradeNatGatewayRequest: TCRequest {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 并发连接数规格；取值为1000000、3000000、10000000，分别对应小型、中型、大型NAT网关
        public let maxConcurrent: UInt64

        public init(natId: String, vpcId: String, maxConcurrent: UInt64) {
            self.natId = natId
            self.vpcId = vpcId
            self.maxConcurrent = maxConcurrent
        }

        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case vpcId = "VpcId"
            case maxConcurrent = "MaxConcurrent"
        }
    }

    /// UpgradeNatGateway返回参数结构体
    public struct UpgradeNatGatewayResponse: TCResponse {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 升级NAT网关
    ///
    /// 升级NAT网关接口，可NAT网关修改为小型NAT网关、中型NAT网关、以及大型NAT网关
    @inlinable
    public func upgradeNatGateway(_ input: UpgradeNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeNatGatewayResponse> {
        self.client.execute(action: "UpgradeNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级NAT网关
    ///
    /// 升级NAT网关接口，可NAT网关修改为小型NAT网关、中型NAT网关、以及大型NAT网关
    @inlinable
    public func upgradeNatGateway(_ input: UpgradeNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeNatGatewayResponse {
        try await self.client.execute(action: "UpgradeNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级NAT网关
    ///
    /// 升级NAT网关接口，可NAT网关修改为小型NAT网关、中型NAT网关、以及大型NAT网关
    @inlinable
    public func upgradeNatGateway(natId: String, vpcId: String, maxConcurrent: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeNatGatewayResponse> {
        self.upgradeNatGateway(.init(natId: natId, vpcId: vpcId, maxConcurrent: maxConcurrent), region: region, logger: logger, on: eventLoop)
    }

    /// 升级NAT网关
    ///
    /// 升级NAT网关接口，可NAT网关修改为小型NAT网关、中型NAT网关、以及大型NAT网关
    @inlinable
    public func upgradeNatGateway(natId: String, vpcId: String, maxConcurrent: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeNatGatewayResponse {
        try await self.upgradeNatGateway(.init(natId: natId, vpcId: vpcId, maxConcurrent: maxConcurrent), region: region, logger: logger, on: eventLoop)
    }
}
