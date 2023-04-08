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

extension Es {
    /// GetRequestTargetNodeTypes请求参数结构体
    public struct GetRequestTargetNodeTypesRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// GetRequestTargetNodeTypes返回参数结构体
    public struct GetRequestTargetNodeTypesResponse: TCResponseModel {
        /// 接收请求的目标节点类型列表
        public let targetNodeTypes: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case targetNodeTypes = "TargetNodeTypes"
            case requestId = "RequestId"
        }
    }

    /// 获取接收客户端请求的节点类型
    @inlinable
    public func getRequestTargetNodeTypes(_ input: GetRequestTargetNodeTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRequestTargetNodeTypesResponse> {
        self.client.execute(action: "GetRequestTargetNodeTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取接收客户端请求的节点类型
    @inlinable
    public func getRequestTargetNodeTypes(_ input: GetRequestTargetNodeTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRequestTargetNodeTypesResponse {
        try await self.client.execute(action: "GetRequestTargetNodeTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取接收客户端请求的节点类型
    @inlinable
    public func getRequestTargetNodeTypes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRequestTargetNodeTypesResponse> {
        self.getRequestTargetNodeTypes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取接收客户端请求的节点类型
    @inlinable
    public func getRequestTargetNodeTypes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRequestTargetNodeTypesResponse {
        try await self.getRequestTargetNodeTypes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
