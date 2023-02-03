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

extension Bmlb {
    /// DeleteL7Domains请求参数结构体
    public struct DeleteL7DomainsRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String

        /// 转发域名实例ID列表，可通过接口DescribeL7Rules查询。
        public let domainIds: [String]

        public init(loadBalancerId: String, listenerId: String, domainIds: [String]) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainIds = domainIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainIds = "DomainIds"
        }
    }

    /// DeleteL7Domains返回参数结构体
    public struct DeleteL7DomainsResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除黑石负载均衡七层转发域名
    ///
    /// 删除黑石负载均衡七层转发域名。
    @inlinable
    public func deleteL7Domains(_ input: DeleteL7DomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteL7DomainsResponse> {
        self.client.execute(action: "DeleteL7Domains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除黑石负载均衡七层转发域名
    ///
    /// 删除黑石负载均衡七层转发域名。
    @inlinable
    public func deleteL7Domains(_ input: DeleteL7DomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteL7DomainsResponse {
        try await self.client.execute(action: "DeleteL7Domains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除黑石负载均衡七层转发域名
    ///
    /// 删除黑石负载均衡七层转发域名。
    @inlinable
    public func deleteL7Domains(loadBalancerId: String, listenerId: String, domainIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteL7DomainsResponse> {
        let input = DeleteL7DomainsRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, domainIds: domainIds)
        return self.client.execute(action: "DeleteL7Domains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除黑石负载均衡七层转发域名
    ///
    /// 删除黑石负载均衡七层转发域名。
    @inlinable
    public func deleteL7Domains(loadBalancerId: String, listenerId: String, domainIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteL7DomainsResponse {
        let input = DeleteL7DomainsRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, domainIds: domainIds)
        return try await self.client.execute(action: "DeleteL7Domains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
