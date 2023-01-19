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
    /// UnbindTrafficMirrorReceivers请求参数结构体
    public struct UnbindTrafficMirrorReceiversRequest: TCRequestModel {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 待绑定的主机实例ID和端口数组。
        public let receiverSet: [UnbindTrafficMirrorReceiver]

        public init(trafficMirrorId: String, receiverSet: [UnbindTrafficMirrorReceiver]) {
            self.trafficMirrorId = trafficMirrorId
            self.receiverSet = receiverSet
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case receiverSet = "ReceiverSet"
        }
    }

    /// UnbindTrafficMirrorReceivers返回参数结构体
    public struct UnbindTrafficMirrorReceiversResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 解绑流量镜像接收机
    ///
    /// 从流量镜像实例上解绑流量镜像接收机。
    @inlinable
    public func unbindTrafficMirrorReceivers(_ input: UnbindTrafficMirrorReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindTrafficMirrorReceiversResponse> {
        self.client.execute(action: "UnbindTrafficMirrorReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑流量镜像接收机
    ///
    /// 从流量镜像实例上解绑流量镜像接收机。
    @inlinable
    public func unbindTrafficMirrorReceivers(_ input: UnbindTrafficMirrorReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindTrafficMirrorReceiversResponse {
        try await self.client.execute(action: "UnbindTrafficMirrorReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑流量镜像接收机
    ///
    /// 从流量镜像实例上解绑流量镜像接收机。
    @inlinable
    public func unbindTrafficMirrorReceivers(trafficMirrorId: String, receiverSet: [UnbindTrafficMirrorReceiver], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindTrafficMirrorReceiversResponse> {
        self.unbindTrafficMirrorReceivers(UnbindTrafficMirrorReceiversRequest(trafficMirrorId: trafficMirrorId, receiverSet: receiverSet), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑流量镜像接收机
    ///
    /// 从流量镜像实例上解绑流量镜像接收机。
    @inlinable
    public func unbindTrafficMirrorReceivers(trafficMirrorId: String, receiverSet: [UnbindTrafficMirrorReceiver], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindTrafficMirrorReceiversResponse {
        try await self.unbindTrafficMirrorReceivers(UnbindTrafficMirrorReceiversRequest(trafficMirrorId: trafficMirrorId, receiverSet: receiverSet), region: region, logger: logger, on: eventLoop)
    }
}
