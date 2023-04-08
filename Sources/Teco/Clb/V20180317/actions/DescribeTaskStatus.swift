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
    /// DescribeTaskStatus请求参数结构体
    public struct DescribeTaskStatusRequest: TCRequestModel {
        /// 请求ID，即接口返回的 RequestId 参数。
        public let taskId: String?

        /// 订单ID。
        /// 注意：参数TaskId和DealName必须传一个。
        public let dealName: String?

        public init(taskId: String? = nil, dealName: String? = nil) {
            self.taskId = taskId
            self.dealName = dealName
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case dealName = "DealName"
        }
    }

    /// DescribeTaskStatus返回参数结构体
    public struct DescribeTaskStatusResponse: TCResponseModel {
        /// 任务的当前状态。 0：成功，1：失败，2：进行中。
        public let status: Int64

        /// 由负载均衡实例唯一 ID 组成的数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case loadBalancerIds = "LoadBalancerIds"
            case requestId = "RequestId"
        }
    }

    /// 查询异步任务状态
    ///
    /// 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例、监听器、规则以及绑定或解绑后端服务等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询异步任务状态
    ///
    /// 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例、监听器、规则以及绑定或解绑后端服务等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询异步任务状态
    ///
    /// 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例、监听器、规则以及绑定或解绑后端服务等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。
    @inlinable
    public func describeTaskStatus(taskId: String? = nil, dealName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.describeTaskStatus(.init(taskId: taskId, dealName: dealName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询异步任务状态
    ///
    /// 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例、监听器、规则以及绑定或解绑后端服务等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。
    @inlinable
    public func describeTaskStatus(taskId: String? = nil, dealName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.describeTaskStatus(.init(taskId: taskId, dealName: dealName), region: region, logger: logger, on: eventLoop)
    }
}
