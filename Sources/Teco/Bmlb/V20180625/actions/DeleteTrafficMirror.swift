//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteTrafficMirror请求参数结构体
    public struct DeleteTrafficMirrorRequest: TCRequestModel {
        /// 流量镜像实例ID数组，可以批量删除，每次删除上限为20
        public let trafficMirrorIds: [String]

        public init(trafficMirrorIds: [String]) {
            self.trafficMirrorIds = trafficMirrorIds
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorIds = "TrafficMirrorIds"
        }
    }

    /// DeleteTrafficMirror返回参数结构体
    public struct DeleteTrafficMirrorResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除流量镜像实例
    ///
    /// 删除已创建的黑石流量镜像实例，删除过程是异步执行的，因此需要使用查询任务接口获取删除的结果。
    @inlinable
    public func deleteTrafficMirror(_ input: DeleteTrafficMirrorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTrafficMirrorResponse > {
        self.client.execute(action: "DeleteTrafficMirror", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除流量镜像实例
    ///
    /// 删除已创建的黑石流量镜像实例，删除过程是异步执行的，因此需要使用查询任务接口获取删除的结果。
    @inlinable
    public func deleteTrafficMirror(_ input: DeleteTrafficMirrorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrafficMirrorResponse {
        try await self.client.execute(action: "DeleteTrafficMirror", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除流量镜像实例
    ///
    /// 删除已创建的黑石流量镜像实例，删除过程是异步执行的，因此需要使用查询任务接口获取删除的结果。
    @inlinable
    public func deleteTrafficMirror(trafficMirrorIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTrafficMirrorResponse > {
        self.deleteTrafficMirror(DeleteTrafficMirrorRequest(trafficMirrorIds: trafficMirrorIds), logger: logger, on: eventLoop)
    }

    /// 删除流量镜像实例
    ///
    /// 删除已创建的黑石流量镜像实例，删除过程是异步执行的，因此需要使用查询任务接口获取删除的结果。
    @inlinable
    public func deleteTrafficMirror(trafficMirrorIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrafficMirrorResponse {
        try await self.deleteTrafficMirror(DeleteTrafficMirrorRequest(trafficMirrorIds: trafficMirrorIds), logger: logger, on: eventLoop)
    }
}
