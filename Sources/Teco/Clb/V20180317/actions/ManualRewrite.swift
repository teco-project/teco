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

import TecoCore

extension Clb {
    /// ManualRewrite请求参数结构体
    public struct ManualRewriteRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 源监听器 ID。
        public let sourceListenerId: String

        /// 目标监听器 ID。
        public let targetListenerId: String

        /// 转发规则之间的重定向关系。
        public let rewriteInfos: [RewriteLocationMap]

        public init(loadBalancerId: String, sourceListenerId: String, targetListenerId: String, rewriteInfos: [RewriteLocationMap]) {
            self.loadBalancerId = loadBalancerId
            self.sourceListenerId = sourceListenerId
            self.targetListenerId = targetListenerId
            self.rewriteInfos = rewriteInfos
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case sourceListenerId = "SourceListenerId"
            case targetListenerId = "TargetListenerId"
            case rewriteInfos = "RewriteInfos"
        }
    }

    /// ManualRewrite返回参数结构体
    public struct ManualRewriteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 手动添加负载均衡转发规则的重定向关系
    ///
    /// 用户手动配置原访问地址和重定向地址，系统自动将原访问地址的请求重定向至对应路径的目的地址。同一域名下可以配置多条路径作为重定向策略，实现http/https之间请求的自动跳转。设置重定向时，需满足如下约束条件：若A已经重定向至B，则A不能再重定向至C（除非先删除老的重定向关系，再建立新的重定向关系），B不能重定向至任何其它地址。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func manualRewrite(_ input: ManualRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ManualRewriteResponse> {
        self.client.execute(action: "ManualRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手动添加负载均衡转发规则的重定向关系
    ///
    /// 用户手动配置原访问地址和重定向地址，系统自动将原访问地址的请求重定向至对应路径的目的地址。同一域名下可以配置多条路径作为重定向策略，实现http/https之间请求的自动跳转。设置重定向时，需满足如下约束条件：若A已经重定向至B，则A不能再重定向至C（除非先删除老的重定向关系，再建立新的重定向关系），B不能重定向至任何其它地址。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func manualRewrite(_ input: ManualRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManualRewriteResponse {
        try await self.client.execute(action: "ManualRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 手动添加负载均衡转发规则的重定向关系
    ///
    /// 用户手动配置原访问地址和重定向地址，系统自动将原访问地址的请求重定向至对应路径的目的地址。同一域名下可以配置多条路径作为重定向策略，实现http/https之间请求的自动跳转。设置重定向时，需满足如下约束条件：若A已经重定向至B，则A不能再重定向至C（除非先删除老的重定向关系，再建立新的重定向关系），B不能重定向至任何其它地址。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func manualRewrite(loadBalancerId: String, sourceListenerId: String, targetListenerId: String, rewriteInfos: [RewriteLocationMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ManualRewriteResponse> {
        self.manualRewrite(.init(loadBalancerId: loadBalancerId, sourceListenerId: sourceListenerId, targetListenerId: targetListenerId, rewriteInfos: rewriteInfos), region: region, logger: logger, on: eventLoop)
    }

    /// 手动添加负载均衡转发规则的重定向关系
    ///
    /// 用户手动配置原访问地址和重定向地址，系统自动将原访问地址的请求重定向至对应路径的目的地址。同一域名下可以配置多条路径作为重定向策略，实现http/https之间请求的自动跳转。设置重定向时，需满足如下约束条件：若A已经重定向至B，则A不能再重定向至C（除非先删除老的重定向关系，再建立新的重定向关系），B不能重定向至任何其它地址。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func manualRewrite(loadBalancerId: String, sourceListenerId: String, targetListenerId: String, rewriteInfos: [RewriteLocationMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManualRewriteResponse {
        try await self.manualRewrite(.init(loadBalancerId: loadBalancerId, sourceListenerId: sourceListenerId, targetListenerId: targetListenerId, rewriteInfos: rewriteInfos), region: region, logger: logger, on: eventLoop)
    }
}
