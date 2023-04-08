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

extension Bmlb {
    /// ModifyL7Locations请求参数结构体
    public struct ModifyL7LocationsRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String

        /// 待更新的七层转发规则信息数组。
        public let ruleSet: [ModifyL7LocationRule]

        public init(loadBalancerId: String, listenerId: String, ruleSet: [ModifyL7LocationRule]) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.ruleSet = ruleSet
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case ruleSet = "RuleSet"
        }
    }

    /// ModifyL7Locations返回参数结构体
    public struct ModifyL7LocationsResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改黑石负载均衡七层转发路径
    ///
    /// 修改黑石负载均衡七层转发路径。
    @inlinable
    public func modifyL7Locations(_ input: ModifyL7LocationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL7LocationsResponse> {
        self.client.execute(action: "ModifyL7Locations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡七层转发路径
    ///
    /// 修改黑石负载均衡七层转发路径。
    @inlinable
    public func modifyL7Locations(_ input: ModifyL7LocationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL7LocationsResponse {
        try await self.client.execute(action: "ModifyL7Locations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石负载均衡七层转发路径
    ///
    /// 修改黑石负载均衡七层转发路径。
    @inlinable
    public func modifyL7Locations(loadBalancerId: String, listenerId: String, ruleSet: [ModifyL7LocationRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL7LocationsResponse> {
        self.modifyL7Locations(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, ruleSet: ruleSet), region: region, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡七层转发路径
    ///
    /// 修改黑石负载均衡七层转发路径。
    @inlinable
    public func modifyL7Locations(loadBalancerId: String, listenerId: String, ruleSet: [ModifyL7LocationRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL7LocationsResponse {
        try await self.modifyL7Locations(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, ruleSet: ruleSet), region: region, logger: logger, on: eventLoop)
    }
}
