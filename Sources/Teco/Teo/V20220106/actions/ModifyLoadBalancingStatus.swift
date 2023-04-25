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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// ModifyLoadBalancingStatus请求参数结构体
    public struct ModifyLoadBalancingStatusRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 负载均衡ID
        public let loadBalancingId: String

        /// 状态
        /// online: 启用
        /// offline: 停用
        public let status: String

        public init(zoneId: String, loadBalancingId: String, status: String) {
            self.zoneId = zoneId
            self.loadBalancingId = loadBalancingId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case loadBalancingId = "LoadBalancingId"
            case status = "Status"
        }
    }

    /// ModifyLoadBalancingStatus返回参数结构体
    public struct ModifyLoadBalancingStatusResponse: TCResponseModel {
        /// 负载均衡ID
        public let loadBalancingId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancingId = "LoadBalancingId"
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡状态
    @inlinable
    public func modifyLoadBalancingStatus(_ input: ModifyLoadBalancingStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancingStatusResponse> {
        self.client.execute(action: "ModifyLoadBalancingStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡状态
    @inlinable
    public func modifyLoadBalancingStatus(_ input: ModifyLoadBalancingStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancingStatusResponse {
        try await self.client.execute(action: "ModifyLoadBalancingStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡状态
    @inlinable
    public func modifyLoadBalancingStatus(zoneId: String, loadBalancingId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancingStatusResponse> {
        self.modifyLoadBalancingStatus(.init(zoneId: zoneId, loadBalancingId: loadBalancingId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡状态
    @inlinable
    public func modifyLoadBalancingStatus(zoneId: String, loadBalancingId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancingStatusResponse {
        try await self.modifyLoadBalancingStatus(.init(zoneId: zoneId, loadBalancingId: loadBalancingId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
