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

extension Redis {
    /// DestroyPostpaidInstance请求参数结构体
    public struct DestroyPostpaidInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DestroyPostpaidInstance返回参数结构体
    public struct DestroyPostpaidInstanceResponse: TCResponseModel {
        /// 任务Id
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 按量计费实例销毁
    @inlinable
    public func destroyPostpaidInstance(_ input: DestroyPostpaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPostpaidInstanceResponse> {
        self.client.execute(action: "DestroyPostpaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按量计费实例销毁
    @inlinable
    public func destroyPostpaidInstance(_ input: DestroyPostpaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPostpaidInstanceResponse {
        try await self.client.execute(action: "DestroyPostpaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按量计费实例销毁
    @inlinable
    public func destroyPostpaidInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPostpaidInstanceResponse> {
        self.destroyPostpaidInstance(DestroyPostpaidInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 按量计费实例销毁
    @inlinable
    public func destroyPostpaidInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPostpaidInstanceResponse {
        try await self.destroyPostpaidInstance(DestroyPostpaidInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
