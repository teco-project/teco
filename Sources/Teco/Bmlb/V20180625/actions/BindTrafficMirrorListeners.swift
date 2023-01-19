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

extension Bmlb {
    /// BindTrafficMirrorListeners请求参数结构体
    public struct BindTrafficMirrorListenersRequest: TCRequestModel {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 七层监听器实例ID数组，可通过接口DescribeL7Listeners查询。
        public let listenerIds: [String]

        public init(trafficMirrorId: String, listenerIds: [String]) {
            self.trafficMirrorId = trafficMirrorId
            self.listenerIds = listenerIds
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case listenerIds = "ListenerIds"
        }
    }

    /// BindTrafficMirrorListeners返回参数结构体
    public struct BindTrafficMirrorListenersResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 绑定黑石服务器七层监听器到流量镜像实例
    ///
    /// 绑定黑石服务器七层监听器到流量镜像实例。
    @inlinable
    public func bindTrafficMirrorListeners(_ input: BindTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindTrafficMirrorListenersResponse> {
        self.client.execute(action: "BindTrafficMirrorListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定黑石服务器七层监听器到流量镜像实例
    ///
    /// 绑定黑石服务器七层监听器到流量镜像实例。
    @inlinable
    public func bindTrafficMirrorListeners(_ input: BindTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindTrafficMirrorListenersResponse {
        try await self.client.execute(action: "BindTrafficMirrorListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定黑石服务器七层监听器到流量镜像实例
    ///
    /// 绑定黑石服务器七层监听器到流量镜像实例。
    @inlinable
    public func bindTrafficMirrorListeners(trafficMirrorId: String, listenerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindTrafficMirrorListenersResponse> {
        self.bindTrafficMirrorListeners(BindTrafficMirrorListenersRequest(trafficMirrorId: trafficMirrorId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定黑石服务器七层监听器到流量镜像实例
    ///
    /// 绑定黑石服务器七层监听器到流量镜像实例。
    @inlinable
    public func bindTrafficMirrorListeners(trafficMirrorId: String, listenerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindTrafficMirrorListenersResponse {
        try await self.bindTrafficMirrorListeners(BindTrafficMirrorListenersRequest(trafficMirrorId: trafficMirrorId, listenerIds: listenerIds), region: region, logger: logger, on: eventLoop)
    }
}
