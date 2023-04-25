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

extension Bmlb {
    /// DescribeL7ListenerInfo请求参数结构体
    public struct DescribeL7ListenerInfoRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 查找的键值，可用于模糊查找有该转发域名的监听器。
        public let searchKey: String?

        /// 主机ID或虚机IP列表，可用于获取绑定了该主机的监听器。
        public let instanceIds: [String]?

        /// 是否获取转发规则下的主机信息。默认为0，不获取。
        public let ifGetBackendInfo: Int64?

        public init(loadBalancerId: String, searchKey: String? = nil, instanceIds: [String]? = nil, ifGetBackendInfo: Int64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.searchKey = searchKey
            self.instanceIds = instanceIds
            self.ifGetBackendInfo = ifGetBackendInfo
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case searchKey = "SearchKey"
            case instanceIds = "InstanceIds"
            case ifGetBackendInfo = "IfGetBackendInfo"
        }
    }

    /// DescribeL7ListenerInfo返回参数结构体
    public struct DescribeL7ListenerInfoResponse: TCResponseModel {
        /// 返回的七层监听器列表。
        public let listenerSet: [L7ListenerInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }
    }

    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器
    ///
    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器。
    @inlinable
    public func describeL7ListenerInfo(_ input: DescribeL7ListenerInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenerInfoResponse> {
        self.client.execute(action: "DescribeL7ListenerInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器
    ///
    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器。
    @inlinable
    public func describeL7ListenerInfo(_ input: DescribeL7ListenerInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenerInfoResponse {
        try await self.client.execute(action: "DescribeL7ListenerInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器
    ///
    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器。
    @inlinable
    public func describeL7ListenerInfo(loadBalancerId: String, searchKey: String? = nil, instanceIds: [String]? = nil, ifGetBackendInfo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenerInfoResponse> {
        self.describeL7ListenerInfo(.init(loadBalancerId: loadBalancerId, searchKey: searchKey, instanceIds: instanceIds, ifGetBackendInfo: ifGetBackendInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器
    ///
    /// 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器。
    @inlinable
    public func describeL7ListenerInfo(loadBalancerId: String, searchKey: String? = nil, instanceIds: [String]? = nil, ifGetBackendInfo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenerInfoResponse {
        try await self.describeL7ListenerInfo(.init(loadBalancerId: loadBalancerId, searchKey: searchKey, instanceIds: instanceIds, ifGetBackendInfo: ifGetBackendInfo), region: region, logger: logger, on: eventLoop)
    }
}
