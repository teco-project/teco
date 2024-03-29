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
    /// BindTrafficMirrorReceivers请求参数结构体
    public struct BindTrafficMirrorReceiversRequest: TCRequest {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 待绑定的黑石物理机信息数组。
        public let receiverSet: [BindTrafficMirrorReceiver]

        public init(trafficMirrorId: String, receiverSet: [BindTrafficMirrorReceiver]) {
            self.trafficMirrorId = trafficMirrorId
            self.receiverSet = receiverSet
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case receiverSet = "ReceiverSet"
        }
    }

    /// BindTrafficMirrorReceivers返回参数结构体
    public struct BindTrafficMirrorReceiversResponse: TCResponse {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 绑定黑石物理服务器成为流量镜像接收机
    ///
    /// 绑定黑石物理服务器成为流量镜像接收机。
    @inlinable
    public func bindTrafficMirrorReceivers(_ input: BindTrafficMirrorReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindTrafficMirrorReceiversResponse> {
        self.client.execute(action: "BindTrafficMirrorReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定黑石物理服务器成为流量镜像接收机
    ///
    /// 绑定黑石物理服务器成为流量镜像接收机。
    @inlinable
    public func bindTrafficMirrorReceivers(_ input: BindTrafficMirrorReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindTrafficMirrorReceiversResponse {
        try await self.client.execute(action: "BindTrafficMirrorReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定黑石物理服务器成为流量镜像接收机
    ///
    /// 绑定黑石物理服务器成为流量镜像接收机。
    @inlinable
    public func bindTrafficMirrorReceivers(trafficMirrorId: String, receiverSet: [BindTrafficMirrorReceiver], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindTrafficMirrorReceiversResponse> {
        self.bindTrafficMirrorReceivers(.init(trafficMirrorId: trafficMirrorId, receiverSet: receiverSet), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定黑石物理服务器成为流量镜像接收机
    ///
    /// 绑定黑石物理服务器成为流量镜像接收机。
    @inlinable
    public func bindTrafficMirrorReceivers(trafficMirrorId: String, receiverSet: [BindTrafficMirrorReceiver], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindTrafficMirrorReceiversResponse {
        try await self.bindTrafficMirrorReceivers(.init(trafficMirrorId: trafficMirrorId, receiverSet: receiverSet), region: region, logger: logger, on: eventLoop)
    }
}
