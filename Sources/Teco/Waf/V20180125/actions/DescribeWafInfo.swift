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

extension Waf {
    /// DescribeWafInfo请求参数结构体
    public struct DescribeWafInfoRequest: TCRequest {
        /// CLB回调WAF接口（获取、删除）的参数
        public let params: [ClbHostsParams]

        public init(params: [ClbHostsParams]) {
            self.params = params
        }

        enum CodingKeys: String, CodingKey {
            case params = "Params"
        }
    }

    /// DescribeWafInfo返回参数结构体
    public struct DescribeWafInfoResponse: TCResponse {
        /// 返回的WAF信息数组的长度，为0则表示没有查询到对应的信息
        public let total: UInt64

        /// 对应的WAF信息的数组。
        public let hostList: [ClbHostResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case hostList = "HostList"
            case requestId = "RequestId"
        }
    }

    /// 获取负载均衡绑定的WAF信息
    ///
    /// 获取负载均衡绑定的WAF信息，可以根据租户负载均衡实例ID、负载均衡监听器ID、负载均衡的域名信息来查询对应绑定的 Waf的状态信息。
    /// 查询的范围：负载均衡实例ID、负载均衡实例ID+监听器ID、负载均衡实例ID+监听器ID+域名。
    /// 可能的错误码：ResourceNotFound（没有找到对应的资源）、UnsupportedRegion（目前clb-waf只支持北京、广州、上海、成都、重庆、香港地域）。
    @inlinable
    public func describeWafInfo(_ input: DescribeWafInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafInfoResponse> {
        self.client.execute(action: "DescribeWafInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡绑定的WAF信息
    ///
    /// 获取负载均衡绑定的WAF信息，可以根据租户负载均衡实例ID、负载均衡监听器ID、负载均衡的域名信息来查询对应绑定的 Waf的状态信息。
    /// 查询的范围：负载均衡实例ID、负载均衡实例ID+监听器ID、负载均衡实例ID+监听器ID+域名。
    /// 可能的错误码：ResourceNotFound（没有找到对应的资源）、UnsupportedRegion（目前clb-waf只支持北京、广州、上海、成都、重庆、香港地域）。
    @inlinable
    public func describeWafInfo(_ input: DescribeWafInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafInfoResponse {
        try await self.client.execute(action: "DescribeWafInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡绑定的WAF信息
    ///
    /// 获取负载均衡绑定的WAF信息，可以根据租户负载均衡实例ID、负载均衡监听器ID、负载均衡的域名信息来查询对应绑定的 Waf的状态信息。
    /// 查询的范围：负载均衡实例ID、负载均衡实例ID+监听器ID、负载均衡实例ID+监听器ID+域名。
    /// 可能的错误码：ResourceNotFound（没有找到对应的资源）、UnsupportedRegion（目前clb-waf只支持北京、广州、上海、成都、重庆、香港地域）。
    @inlinable
    public func describeWafInfo(params: [ClbHostsParams], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafInfoResponse> {
        self.describeWafInfo(.init(params: params), region: region, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡绑定的WAF信息
    ///
    /// 获取负载均衡绑定的WAF信息，可以根据租户负载均衡实例ID、负载均衡监听器ID、负载均衡的域名信息来查询对应绑定的 Waf的状态信息。
    /// 查询的范围：负载均衡实例ID、负载均衡实例ID+监听器ID、负载均衡实例ID+监听器ID+域名。
    /// 可能的错误码：ResourceNotFound（没有找到对应的资源）、UnsupportedRegion（目前clb-waf只支持北京、广州、上海、成都、重庆、香港地域）。
    @inlinable
    public func describeWafInfo(params: [ClbHostsParams], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafInfoResponse {
        try await self.describeWafInfo(.init(params: params), region: region, logger: logger, on: eventLoop)
    }
}