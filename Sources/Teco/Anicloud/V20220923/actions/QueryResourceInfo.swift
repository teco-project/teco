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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Anicloud {
    /// QueryResourceInfo请求参数结构体
    public struct QueryResourceInfoRequest: TCRequestModel {
        /// 资源id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// QueryResourceInfo返回参数结构体
    public struct QueryResourceInfoResponse: TCResponseModel {
        /// 资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resource: Resource?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case requestId = "RequestId"
        }
    }

    /// 查询资源信息
    @inlinable
    public func queryResourceInfo(_ input: QueryResourceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResourceInfoResponse> {
        self.client.execute(action: "QueryResourceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源信息
    @inlinable
    public func queryResourceInfo(_ input: QueryResourceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResourceInfoResponse {
        try await self.client.execute(action: "QueryResourceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源信息
    @inlinable
    public func queryResourceInfo(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResourceInfoResponse> {
        self.queryResourceInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源信息
    @inlinable
    public func queryResourceInfo(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResourceInfoResponse {
        try await self.queryResourceInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
