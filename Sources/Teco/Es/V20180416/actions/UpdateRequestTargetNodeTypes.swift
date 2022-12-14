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

extension Es {
    /// UpdateRequestTargetNodeTypes请求参数结构体
    public struct UpdateRequestTargetNodeTypesRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 接收请求的目标节点类型列表
        public let targetNodeTypes: [String]

        public init(instanceId: String, targetNodeTypes: [String]) {
            self.instanceId = instanceId
            self.targetNodeTypes = targetNodeTypes
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case targetNodeTypes = "TargetNodeTypes"
        }
    }

    /// UpdateRequestTargetNodeTypes返回参数结构体
    public struct UpdateRequestTargetNodeTypesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新接收客户端请求的节点类型
    @inlinable
    public func updateRequestTargetNodeTypes(_ input: UpdateRequestTargetNodeTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateRequestTargetNodeTypesResponse > {
        self.client.execute(action: "UpdateRequestTargetNodeTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新接收客户端请求的节点类型
    @inlinable
    public func updateRequestTargetNodeTypes(_ input: UpdateRequestTargetNodeTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRequestTargetNodeTypesResponse {
        try await self.client.execute(action: "UpdateRequestTargetNodeTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新接收客户端请求的节点类型
    @inlinable
    public func updateRequestTargetNodeTypes(instanceId: String, targetNodeTypes: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateRequestTargetNodeTypesResponse > {
        self.updateRequestTargetNodeTypes(UpdateRequestTargetNodeTypesRequest(instanceId: instanceId, targetNodeTypes: targetNodeTypes), logger: logger, on: eventLoop)
    }

    /// 更新接收客户端请求的节点类型
    @inlinable
    public func updateRequestTargetNodeTypes(instanceId: String, targetNodeTypes: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRequestTargetNodeTypesResponse {
        try await self.updateRequestTargetNodeTypes(UpdateRequestTargetNodeTypesRequest(instanceId: instanceId, targetNodeTypes: targetNodeTypes), logger: logger, on: eventLoop)
    }
}
