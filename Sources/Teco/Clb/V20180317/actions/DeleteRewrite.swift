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
    /// DeleteRewrite请求参数结构体
    public struct DeleteRewriteRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 源监听器ID。
        public let sourceListenerId: String

        /// 目标监听器ID。
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

    /// DeleteRewrite返回参数结构体
    public struct DeleteRewriteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除负载均衡转发规则之间的重定向关系
    ///
    /// DeleteRewrite 接口支持删除指定转发规则之间的重定向关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRewrite(_ input: DeleteRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRewriteResponse> {
        self.client.execute(action: "DeleteRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡转发规则之间的重定向关系
    ///
    /// DeleteRewrite 接口支持删除指定转发规则之间的重定向关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRewrite(_ input: DeleteRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRewriteResponse {
        try await self.client.execute(action: "DeleteRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除负载均衡转发规则之间的重定向关系
    ///
    /// DeleteRewrite 接口支持删除指定转发规则之间的重定向关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRewrite(loadBalancerId: String, sourceListenerId: String, targetListenerId: String, rewriteInfos: [RewriteLocationMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRewriteResponse> {
        let input = DeleteRewriteRequest(loadBalancerId: loadBalancerId, sourceListenerId: sourceListenerId, targetListenerId: targetListenerId, rewriteInfos: rewriteInfos)
        return self.client.execute(action: "DeleteRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡转发规则之间的重定向关系
    ///
    /// DeleteRewrite 接口支持删除指定转发规则之间的重定向关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRewrite(loadBalancerId: String, sourceListenerId: String, targetListenerId: String, rewriteInfos: [RewriteLocationMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRewriteResponse {
        let input = DeleteRewriteRequest(loadBalancerId: loadBalancerId, sourceListenerId: sourceListenerId, targetListenerId: targetListenerId, rewriteInfos: rewriteInfos)
        return try await self.client.execute(action: "DeleteRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
