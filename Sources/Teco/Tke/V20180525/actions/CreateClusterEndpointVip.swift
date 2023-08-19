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

extension Tke {
    /// CreateClusterEndpointVip请求参数结构体
    public struct CreateClusterEndpointVipRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 安全策略放通单个IP或CIDR(例如: "192.168.1.0/24",默认为拒绝所有)
        public let securityPolicies: [String]?

        public init(clusterId: String, securityPolicies: [String]? = nil) {
            self.clusterId = clusterId
            self.securityPolicies = securityPolicies
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case securityPolicies = "SecurityPolicies"
        }
    }

    /// CreateClusterEndpointVip返回参数结构体
    public struct CreateClusterEndpointVipResponse: TCResponse {
        /// 请求任务的FlowId
        public let requestFlowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestFlowId = "RequestFlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建托管集群外网访问端口（不再维护，准备下线）
    ///
    /// 创建托管集群外网访问端口（不再维护，准备下线）请使用新接口：CreateClusterEndpoint
    @inlinable
    public func createClusterEndpointVip(_ input: CreateClusterEndpointVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterEndpointVipResponse> {
        self.client.execute(action: "CreateClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建托管集群外网访问端口（不再维护，准备下线）
    ///
    /// 创建托管集群外网访问端口（不再维护，准备下线）请使用新接口：CreateClusterEndpoint
    @inlinable
    public func createClusterEndpointVip(_ input: CreateClusterEndpointVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterEndpointVipResponse {
        try await self.client.execute(action: "CreateClusterEndpointVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建托管集群外网访问端口（不再维护，准备下线）
    ///
    /// 创建托管集群外网访问端口（不再维护，准备下线）请使用新接口：CreateClusterEndpoint
    @inlinable
    public func createClusterEndpointVip(clusterId: String, securityPolicies: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterEndpointVipResponse> {
        self.createClusterEndpointVip(.init(clusterId: clusterId, securityPolicies: securityPolicies), region: region, logger: logger, on: eventLoop)
    }

    /// 创建托管集群外网访问端口（不再维护，准备下线）
    ///
    /// 创建托管集群外网访问端口（不再维护，准备下线）请使用新接口：CreateClusterEndpoint
    @inlinable
    public func createClusterEndpointVip(clusterId: String, securityPolicies: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterEndpointVipResponse {
        try await self.createClusterEndpointVip(.init(clusterId: clusterId, securityPolicies: securityPolicies), region: region, logger: logger, on: eventLoop)
    }
}
