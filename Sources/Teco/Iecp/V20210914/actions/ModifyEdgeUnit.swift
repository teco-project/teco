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

extension Iecp {
    /// ModifyEdgeUnit请求参数结构体
    public struct ModifyEdgeUnitRequest: TCRequest {
        /// 边缘集群ID
        public let edgeUnitId: UInt64

        /// 边缘集群名称，64字符以内
        public let name: String

        /// 集群描述，200字符以内
        public let description: String?

        public init(edgeUnitId: UInt64, name: String, description: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.name = name
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case name = "Name"
            case description = "Description"
        }
    }

    /// ModifyEdgeUnit返回参数结构体
    public struct ModifyEdgeUnitResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改边缘集群
    @inlinable @discardableResult
    public func modifyEdgeUnit(_ input: ModifyEdgeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeUnitResponse> {
        self.client.execute(action: "ModifyEdgeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改边缘集群
    @inlinable @discardableResult
    public func modifyEdgeUnit(_ input: ModifyEdgeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeUnitResponse {
        try await self.client.execute(action: "ModifyEdgeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改边缘集群
    @inlinable @discardableResult
    public func modifyEdgeUnit(edgeUnitId: UInt64, name: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeUnitResponse> {
        self.modifyEdgeUnit(.init(edgeUnitId: edgeUnitId, name: name, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改边缘集群
    @inlinable @discardableResult
    public func modifyEdgeUnit(edgeUnitId: UInt64, name: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeUnitResponse {
        try await self.modifyEdgeUnit(.init(edgeUnitId: edgeUnitId, name: name, description: description), region: region, logger: logger, on: eventLoop)
    }
}
