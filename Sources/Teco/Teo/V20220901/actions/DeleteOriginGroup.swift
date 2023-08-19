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

extension Teo {
    /// DeleteOriginGroup请求参数结构体
    public struct DeleteOriginGroupRequest: TCRequest {
        /// 站点ID。
        public let zoneId: String

        /// 源站组ID。
        public let originGroupId: String

        public init(zoneId: String, originGroupId: String) {
            self.zoneId = zoneId
            self.originGroupId = originGroupId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case originGroupId = "OriginGroupId"
        }
    }

    /// DeleteOriginGroup返回参数结构体
    public struct DeleteOriginGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除源站组
    @inlinable @discardableResult
    public func deleteOriginGroup(_ input: DeleteOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOriginGroupResponse> {
        self.client.execute(action: "DeleteOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除源站组
    @inlinable @discardableResult
    public func deleteOriginGroup(_ input: DeleteOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOriginGroupResponse {
        try await self.client.execute(action: "DeleteOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除源站组
    @inlinable @discardableResult
    public func deleteOriginGroup(zoneId: String, originGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOriginGroupResponse> {
        self.deleteOriginGroup(.init(zoneId: zoneId, originGroupId: originGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除源站组
    @inlinable @discardableResult
    public func deleteOriginGroup(zoneId: String, originGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOriginGroupResponse {
        try await self.deleteOriginGroup(.init(zoneId: zoneId, originGroupId: originGroupId), region: region, logger: logger, on: eventLoop)
    }
}
