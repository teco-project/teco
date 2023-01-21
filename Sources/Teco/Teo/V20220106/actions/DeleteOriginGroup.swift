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

extension Teo {
    /// DeleteOriginGroup请求参数结构体
    public struct DeleteOriginGroupRequest: TCRequestModel {
        /// 源站组ID
        public let originId: String

        /// 站点ID
        public let zoneId: String

        public init(originId: String, zoneId: String) {
            self.originId = originId
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case zoneId = "ZoneId"
        }
    }

    /// DeleteOriginGroup返回参数结构体
    public struct DeleteOriginGroupResponse: TCResponseModel {
        /// 源站组ID
        public let originId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case requestId = "RequestId"
        }
    }

    /// 源站组删除
    @inlinable
    public func deleteOriginGroup(_ input: DeleteOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOriginGroupResponse> {
        self.client.execute(action: "DeleteOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 源站组删除
    @inlinable
    public func deleteOriginGroup(_ input: DeleteOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOriginGroupResponse {
        try await self.client.execute(action: "DeleteOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 源站组删除
    @inlinable
    public func deleteOriginGroup(originId: String, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOriginGroupResponse> {
        self.deleteOriginGroup(DeleteOriginGroupRequest(originId: originId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 源站组删除
    @inlinable
    public func deleteOriginGroup(originId: String, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOriginGroupResponse {
        try await self.deleteOriginGroup(DeleteOriginGroupRequest(originId: originId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
