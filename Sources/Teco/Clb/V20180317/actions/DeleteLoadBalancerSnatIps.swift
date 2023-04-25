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
    /// DeleteLoadBalancerSnatIps请求参数结构体
    public struct DeleteLoadBalancerSnatIpsRequest: TCRequestModel {
        /// 负载均衡唯一ID，例如：lb-12345678。
        public let loadBalancerId: String

        /// 删除SnatIp地址数组。
        public let ips: [String]

        public init(loadBalancerId: String, ips: [String]) {
            self.loadBalancerId = loadBalancerId
            self.ips = ips
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case ips = "Ips"
        }
    }

    /// DeleteLoadBalancerSnatIps返回参数结构体
    public struct DeleteLoadBalancerSnatIpsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除SnatIp
    ///
    /// 这个接口用于删除SnatPro的负载均衡的SnatIp。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteLoadBalancerSnatIps(_ input: DeleteLoadBalancerSnatIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerSnatIpsResponse> {
        self.client.execute(action: "DeleteLoadBalancerSnatIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除SnatIp
    ///
    /// 这个接口用于删除SnatPro的负载均衡的SnatIp。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteLoadBalancerSnatIps(_ input: DeleteLoadBalancerSnatIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerSnatIpsResponse {
        try await self.client.execute(action: "DeleteLoadBalancerSnatIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除SnatIp
    ///
    /// 这个接口用于删除SnatPro的负载均衡的SnatIp。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteLoadBalancerSnatIps(loadBalancerId: String, ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerSnatIpsResponse> {
        self.deleteLoadBalancerSnatIps(.init(loadBalancerId: loadBalancerId, ips: ips), region: region, logger: logger, on: eventLoop)
    }

    /// 删除SnatIp
    ///
    /// 这个接口用于删除SnatPro的负载均衡的SnatIp。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteLoadBalancerSnatIps(loadBalancerId: String, ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerSnatIpsResponse {
        try await self.deleteLoadBalancerSnatIps(.init(loadBalancerId: loadBalancerId, ips: ips), region: region, logger: logger, on: eventLoop)
    }
}
