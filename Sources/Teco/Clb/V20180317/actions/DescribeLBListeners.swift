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

extension Clb {
    /// DescribeLBListeners请求参数结构体
    public struct DescribeLBListenersRequest: TCRequestModel {
        /// 需要查询的内网ip列表
        public let backends: [LbRsItem]

        public init(backends: [LbRsItem]) {
            self.backends = backends
        }

        enum CodingKeys: String, CodingKey {
            case backends = "Backends"
        }
    }

    /// DescribeLBListeners返回参数结构体
    public struct DescribeLBListenersResponse: TCResponseModel {
        /// 绑定的后端规则
        public let loadBalancers: [LBItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancers = "LoadBalancers"
            case requestId = "RequestId"
        }
    }

    /// 查询后端云主机或弹性网卡绑定的负载均衡
    ///
    /// 查询后端云主机或弹性网卡绑定的负载均衡，支持弹性网卡和cvm查询。
    @inlinable
    public func describeLBListeners(_ input: DescribeLBListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLBListenersResponse> {
        self.client.execute(action: "DescribeLBListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询后端云主机或弹性网卡绑定的负载均衡
    ///
    /// 查询后端云主机或弹性网卡绑定的负载均衡，支持弹性网卡和cvm查询。
    @inlinable
    public func describeLBListeners(_ input: DescribeLBListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLBListenersResponse {
        try await self.client.execute(action: "DescribeLBListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询后端云主机或弹性网卡绑定的负载均衡
    ///
    /// 查询后端云主机或弹性网卡绑定的负载均衡，支持弹性网卡和cvm查询。
    @inlinable
    public func describeLBListeners(backends: [LbRsItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLBListenersResponse> {
        self.describeLBListeners(.init(backends: backends), region: region, logger: logger, on: eventLoop)
    }

    /// 查询后端云主机或弹性网卡绑定的负载均衡
    ///
    /// 查询后端云主机或弹性网卡绑定的负载均衡，支持弹性网卡和cvm查询。
    @inlinable
    public func describeLBListeners(backends: [LbRsItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLBListenersResponse {
        try await self.describeLBListeners(.init(backends: backends), region: region, logger: logger, on: eventLoop)
    }
}
