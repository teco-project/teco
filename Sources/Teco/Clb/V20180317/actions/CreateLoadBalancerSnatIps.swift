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

extension Clb {
    /// CreateLoadBalancerSnatIps请求参数结构体
    public struct CreateLoadBalancerSnatIpsRequest: TCRequestModel {
        /// 负载均衡唯一性ID，例如：lb-12345678。
        public let loadBalancerId: String

        /// 添加的SnatIp信息，可指定IP申请，或者指定子网自动申请。单个CLB实例可申请的默认上限为10个。
        public let snatIps: [SnatIp]

        /// 添加的SnatIp的个数，可与SnatIps一起使用，但若指定IP时，则不能指定创建的SnatIp个数。默认值为1，数量上限与用户配置有关，默认上限为10。
        public let number: UInt64?

        public init(loadBalancerId: String, snatIps: [SnatIp], number: UInt64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.snatIps = snatIps
            self.number = number
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case snatIps = "SnatIps"
            case number = "Number"
        }
    }

    /// CreateLoadBalancerSnatIps返回参数结构体
    public struct CreateLoadBalancerSnatIpsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加SnatIp
    ///
    /// 针对SnatPro负载均衡，这个接口用于添加SnatIp，如果负载均衡没有开启SnatPro，添加SnatIp后会自动开启。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func createLoadBalancerSnatIps(_ input: CreateLoadBalancerSnatIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancerSnatIpsResponse> {
        self.client.execute(action: "CreateLoadBalancerSnatIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加SnatIp
    ///
    /// 针对SnatPro负载均衡，这个接口用于添加SnatIp，如果负载均衡没有开启SnatPro，添加SnatIp后会自动开启。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func createLoadBalancerSnatIps(_ input: CreateLoadBalancerSnatIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerSnatIpsResponse {
        try await self.client.execute(action: "CreateLoadBalancerSnatIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加SnatIp
    ///
    /// 针对SnatPro负载均衡，这个接口用于添加SnatIp，如果负载均衡没有开启SnatPro，添加SnatIp后会自动开启。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func createLoadBalancerSnatIps(loadBalancerId: String, snatIps: [SnatIp], number: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancerSnatIpsResponse> {
        self.createLoadBalancerSnatIps(.init(loadBalancerId: loadBalancerId, snatIps: snatIps, number: number), region: region, logger: logger, on: eventLoop)
    }

    /// 添加SnatIp
    ///
    /// 针对SnatPro负载均衡，这个接口用于添加SnatIp，如果负载均衡没有开启SnatPro，添加SnatIp后会自动开启。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func createLoadBalancerSnatIps(loadBalancerId: String, snatIps: [SnatIp], number: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerSnatIpsResponse {
        try await self.createLoadBalancerSnatIps(.init(loadBalancerId: loadBalancerId, snatIps: snatIps, number: number), region: region, logger: logger, on: eventLoop)
    }
}
