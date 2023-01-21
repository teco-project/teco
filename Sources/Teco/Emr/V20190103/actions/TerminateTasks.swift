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

extension Emr {
    /// TerminateTasks请求参数结构体
    public struct TerminateTasksRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 待销毁节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr/static/hardware)查询。
        public let resourceIds: [String]

        public init(instanceId: String, resourceIds: [String]) {
            self.instanceId = instanceId
            self.resourceIds = resourceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case resourceIds = "ResourceIds"
        }
    }

    /// TerminateTasks返回参数结构体
    public struct TerminateTasksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 缩容Task节点
    @inlinable @discardableResult
    public func terminateTasks(_ input: TerminateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTasksResponse> {
        self.client.execute(action: "TerminateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 缩容Task节点
    @inlinable @discardableResult
    public func terminateTasks(_ input: TerminateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTasksResponse {
        try await self.client.execute(action: "TerminateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 缩容Task节点
    @inlinable @discardableResult
    public func terminateTasks(instanceId: String, resourceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTasksResponse> {
        self.terminateTasks(TerminateTasksRequest(instanceId: instanceId, resourceIds: resourceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 缩容Task节点
    @inlinable @discardableResult
    public func terminateTasks(instanceId: String, resourceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTasksResponse {
        try await self.terminateTasks(TerminateTasksRequest(instanceId: instanceId, resourceIds: resourceIds), region: region, logger: logger, on: eventLoop)
    }
}
