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
    /// DescribeRewrite请求参数结构体
    public struct DescribeRewriteRequest: TCRequest {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 负载均衡监听器ID数组。
        public let sourceListenerIds: [String]?

        /// 负载均衡转发规则的ID数组。
        public let sourceLocationIds: [String]?

        public init(loadBalancerId: String, sourceListenerIds: [String]? = nil, sourceLocationIds: [String]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.sourceListenerIds = sourceListenerIds
            self.sourceLocationIds = sourceLocationIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case sourceListenerIds = "SourceListenerIds"
            case sourceLocationIds = "SourceLocationIds"
        }
    }

    /// DescribeRewrite返回参数结构体
    public struct DescribeRewriteResponse: TCResponse {
        /// 重定向转发规则构成的数组，若无重定向规则，则返回空数组。
        public let rewriteSet: [RuleOutput]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rewriteSet = "RewriteSet"
            case requestId = "RequestId"
        }
    }

    /// 查询负载均衡转发规则的重定向关系
    ///
    /// DescribeRewrite 接口可根据负载均衡实例ID，查询一个负载均衡实例下转发规则的重定向关系。如果不指定监听器ID或转发规则ID，则返回该负载均衡实例下的所有重定向关系。
    @inlinable
    public func describeRewrite(_ input: DescribeRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRewriteResponse> {
        self.client.execute(action: "DescribeRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡转发规则的重定向关系
    ///
    /// DescribeRewrite 接口可根据负载均衡实例ID，查询一个负载均衡实例下转发规则的重定向关系。如果不指定监听器ID或转发规则ID，则返回该负载均衡实例下的所有重定向关系。
    @inlinable
    public func describeRewrite(_ input: DescribeRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRewriteResponse {
        try await self.client.execute(action: "DescribeRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡转发规则的重定向关系
    ///
    /// DescribeRewrite 接口可根据负载均衡实例ID，查询一个负载均衡实例下转发规则的重定向关系。如果不指定监听器ID或转发规则ID，则返回该负载均衡实例下的所有重定向关系。
    @inlinable
    public func describeRewrite(loadBalancerId: String, sourceListenerIds: [String]? = nil, sourceLocationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRewriteResponse> {
        self.describeRewrite(.init(loadBalancerId: loadBalancerId, sourceListenerIds: sourceListenerIds, sourceLocationIds: sourceLocationIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡转发规则的重定向关系
    ///
    /// DescribeRewrite 接口可根据负载均衡实例ID，查询一个负载均衡实例下转发规则的重定向关系。如果不指定监听器ID或转发规则ID，则返回该负载均衡实例下的所有重定向关系。
    @inlinable
    public func describeRewrite(loadBalancerId: String, sourceListenerIds: [String]? = nil, sourceLocationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRewriteResponse {
        try await self.describeRewrite(.init(loadBalancerId: loadBalancerId, sourceListenerIds: sourceListenerIds, sourceLocationIds: sourceLocationIds), region: region, logger: logger, on: eventLoop)
    }
}
