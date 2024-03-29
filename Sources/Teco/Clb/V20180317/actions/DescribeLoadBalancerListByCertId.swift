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
    /// DescribeLoadBalancerListByCertId请求参数结构体
    public struct DescribeLoadBalancerListByCertIdRequest: TCRequest {
        /// 服务端证书的ID，或客户端证书的ID
        public let certIds: [String]

        public init(certIds: [String]) {
            self.certIds = certIds
        }

        enum CodingKeys: String, CodingKey {
            case certIds = "CertIds"
        }
    }

    /// DescribeLoadBalancerListByCertId返回参数结构体
    public struct DescribeLoadBalancerListByCertIdResponse: TCResponse {
        /// 证书ID，以及与该证书ID关联的负载均衡实例列表
        public let certSet: [CertIdRelatedWithLoadBalancers]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certSet = "CertSet"
            case requestId = "RequestId"
        }
    }

    /// 根据证书ID查询负载均衡
    ///
    /// 根据证书ID查询其在一个地域中所关联到负载均衡实例列表
    @inlinable
    public func describeLoadBalancerListByCertId(_ input: DescribeLoadBalancerListByCertIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerListByCertIdResponse> {
        self.client.execute(action: "DescribeLoadBalancerListByCertId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据证书ID查询负载均衡
    ///
    /// 根据证书ID查询其在一个地域中所关联到负载均衡实例列表
    @inlinable
    public func describeLoadBalancerListByCertId(_ input: DescribeLoadBalancerListByCertIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerListByCertIdResponse {
        try await self.client.execute(action: "DescribeLoadBalancerListByCertId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据证书ID查询负载均衡
    ///
    /// 根据证书ID查询其在一个地域中所关联到负载均衡实例列表
    @inlinable
    public func describeLoadBalancerListByCertId(certIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerListByCertIdResponse> {
        self.describeLoadBalancerListByCertId(.init(certIds: certIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据证书ID查询负载均衡
    ///
    /// 根据证书ID查询其在一个地域中所关联到负载均衡实例列表
    @inlinable
    public func describeLoadBalancerListByCertId(certIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerListByCertIdResponse {
        try await self.describeLoadBalancerListByCertId(.init(certIds: certIds), region: region, logger: logger, on: eventLoop)
    }
}
