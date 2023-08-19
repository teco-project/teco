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

extension Bmeip {
    /// BindVpcIp请求参数结构体
    public struct BindVpcIpRequest: TCRequest {
        /// Eip实例ID
        public let eipId: String

        /// EIP归属VpcId，例如vpc-k7j1t2x1
        public let vpcId: String

        /// 绑定的VPC内IP地址
        public let vpcIp: String

        public init(eipId: String, vpcId: String, vpcIp: String) {
            self.eipId = eipId
            self.vpcId = vpcId
            self.vpcIp = vpcIp
        }

        enum CodingKeys: String, CodingKey {
            case eipId = "EipId"
            case vpcId = "VpcId"
            case vpcIp = "VpcIp"
        }
    }

    /// BindVpcIp返回参数结构体
    public struct BindVpcIpResponse: TCResponse {
        /// EIP绑定VPC网络IP异步任务ID，可以通过查询EIP任务状态查询任务状态
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 黑石EIP绑定VPC IP
    @inlinable
    public func bindVpcIp(_ input: BindVpcIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindVpcIpResponse> {
        self.client.execute(action: "BindVpcIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 黑石EIP绑定VPC IP
    @inlinable
    public func bindVpcIp(_ input: BindVpcIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindVpcIpResponse {
        try await self.client.execute(action: "BindVpcIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 黑石EIP绑定VPC IP
    @inlinable
    public func bindVpcIp(eipId: String, vpcId: String, vpcIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindVpcIpResponse> {
        self.bindVpcIp(.init(eipId: eipId, vpcId: vpcId, vpcIp: vpcIp), region: region, logger: logger, on: eventLoop)
    }

    /// 黑石EIP绑定VPC IP
    @inlinable
    public func bindVpcIp(eipId: String, vpcId: String, vpcIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindVpcIpResponse {
        try await self.bindVpcIp(.init(eipId: eipId, vpcId: vpcId, vpcIp: vpcIp), region: region, logger: logger, on: eventLoop)
    }
}
