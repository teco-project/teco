//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DeleteListener请求参数结构体
    public struct DeleteListenerRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 要删除的监听器ID。
        public let listenerId: String

        public init(loadBalancerId: String, listenerId: String) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
        }
    }

    /// DeleteListener返回参数结构体
    public struct DeleteListenerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除负载均衡监听器
    ///
    /// 本接口用来删除负载均衡实例下的监听器（四层和七层）。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteListener(_ input: DeleteListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteListenerResponse> {
        self.client.execute(action: "DeleteListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡监听器
    ///
    /// 本接口用来删除负载均衡实例下的监听器（四层和七层）。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteListener(_ input: DeleteListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteListenerResponse {
        try await self.client.execute(action: "DeleteListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除负载均衡监听器
    ///
    /// 本接口用来删除负载均衡实例下的监听器（四层和七层）。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteListener(loadBalancerId: String, listenerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteListenerResponse> {
        self.deleteListener(DeleteListenerRequest(loadBalancerId: loadBalancerId, listenerId: listenerId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡监听器
    ///
    /// 本接口用来删除负载均衡实例下的监听器（四层和七层）。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteListener(loadBalancerId: String, listenerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteListenerResponse {
        try await self.deleteListener(DeleteListenerRequest(loadBalancerId: loadBalancerId, listenerId: listenerId), region: region, logger: logger, on: eventLoop)
    }
}
