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

extension Clb {
    /// DescribeListeners请求参数结构体
    public struct DescribeListenersRequest: TCRequest {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 要查询的负载均衡监听器 ID 数组，最大为100个。
        public let listenerIds: [String]?

        /// 要查询的监听器协议类型，取值 TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。
        public let `protocol`: String?

        /// 要查询的监听器的端口。
        public let port: Int64?

        public init(loadBalancerId: String, listenerIds: [String]? = nil, protocol: String? = nil, port: Int64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerIds = listenerIds
            self.protocol = `protocol`
            self.port = port
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerIds = "ListenerIds"
            case `protocol` = "Protocol"
            case port = "Port"
        }
    }

    /// DescribeListeners返回参数结构体
    public struct DescribeListenersResponse: TCResponse {
        /// 监听器列表。
        public let listeners: [Listener]

        /// 总的监听器个数（根据端口、协议、监听器ID过滤后）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listeners = "Listeners"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询负载均衡的监听器列表
    ///
    /// DescribeListeners 接口可根据负载均衡器 ID、监听器的协议或端口作为过滤条件获取监听器列表。如果不指定任何过滤条件，则返回该负载均衡实例下的所有监听器。
    @inlinable
    public func describeListeners(_ input: DescribeListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenersResponse> {
        self.client.execute(action: "DescribeListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡的监听器列表
    ///
    /// DescribeListeners 接口可根据负载均衡器 ID、监听器的协议或端口作为过滤条件获取监听器列表。如果不指定任何过滤条件，则返回该负载均衡实例下的所有监听器。
    @inlinable
    public func describeListeners(_ input: DescribeListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenersResponse {
        try await self.client.execute(action: "DescribeListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡的监听器列表
    ///
    /// DescribeListeners 接口可根据负载均衡器 ID、监听器的协议或端口作为过滤条件获取监听器列表。如果不指定任何过滤条件，则返回该负载均衡实例下的所有监听器。
    @inlinable
    public func describeListeners(loadBalancerId: String, listenerIds: [String]? = nil, protocol: String? = nil, port: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenersResponse> {
        self.describeListeners(.init(loadBalancerId: loadBalancerId, listenerIds: listenerIds, protocol: `protocol`, port: port), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡的监听器列表
    ///
    /// DescribeListeners 接口可根据负载均衡器 ID、监听器的协议或端口作为过滤条件获取监听器列表。如果不指定任何过滤条件，则返回该负载均衡实例下的所有监听器。
    @inlinable
    public func describeListeners(loadBalancerId: String, listenerIds: [String]? = nil, protocol: String? = nil, port: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenersResponse {
        try await self.describeListeners(.init(loadBalancerId: loadBalancerId, listenerIds: listenerIds, protocol: `protocol`, port: port), region: region, logger: logger, on: eventLoop)
    }
}
