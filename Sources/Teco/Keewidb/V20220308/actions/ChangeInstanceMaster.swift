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

extension Keewidb {
    /// ChangeInstanceMaster请求参数结构体
    public struct ChangeInstanceMasterRequest: TCRequest {
        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String

        /// 副本节点 ID。
        public let nodeId: String

        public init(instanceId: String, nodeId: String) {
            self.instanceId = instanceId
            self.nodeId = nodeId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case nodeId = "NodeId"
        }
    }

    /// ChangeInstanceMaster返回参数结构体
    public struct ChangeInstanceMasterResponse: TCResponse {
        /// 异步任务 ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 副本节点或副本组提主
    ///
    /// 本接口（ChangeInstanceMaster）用于将副本节点提升为主节点。
    @inlinable
    public func changeInstanceMaster(_ input: ChangeInstanceMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeInstanceMasterResponse> {
        self.client.execute(action: "ChangeInstanceMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 副本节点或副本组提主
    ///
    /// 本接口（ChangeInstanceMaster）用于将副本节点提升为主节点。
    @inlinable
    public func changeInstanceMaster(_ input: ChangeInstanceMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeInstanceMasterResponse {
        try await self.client.execute(action: "ChangeInstanceMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 副本节点或副本组提主
    ///
    /// 本接口（ChangeInstanceMaster）用于将副本节点提升为主节点。
    @inlinable
    public func changeInstanceMaster(instanceId: String, nodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeInstanceMasterResponse> {
        self.changeInstanceMaster(.init(instanceId: instanceId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 副本节点或副本组提主
    ///
    /// 本接口（ChangeInstanceMaster）用于将副本节点提升为主节点。
    @inlinable
    public func changeInstanceMaster(instanceId: String, nodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeInstanceMasterResponse {
        try await self.changeInstanceMaster(.init(instanceId: instanceId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }
}
