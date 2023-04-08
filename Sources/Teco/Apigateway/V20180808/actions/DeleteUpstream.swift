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

extension Apigateway {
    /// DeleteUpstream请求参数结构体
    public struct DeleteUpstreamRequest: TCRequestModel {
        /// 待删除的后端通道ID
        public let upstreamId: String

        public init(upstreamId: String) {
            self.upstreamId = upstreamId
        }

        enum CodingKeys: String, CodingKey {
            case upstreamId = "UpstreamId"
        }
    }

    /// DeleteUpstream返回参数结构体
    public struct DeleteUpstreamResponse: TCResponseModel {
        /// 成功删除的后端通道ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upstreamId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case upstreamId = "UpstreamId"
            case requestId = "RequestId"
        }
    }

    /// 删除后端通道
    ///
    /// 删除后端通道，需要注意有API绑定时，不允许删除
    @inlinable
    public func deleteUpstream(_ input: DeleteUpstreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUpstreamResponse> {
        self.client.execute(action: "DeleteUpstream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除后端通道
    ///
    /// 删除后端通道，需要注意有API绑定时，不允许删除
    @inlinable
    public func deleteUpstream(_ input: DeleteUpstreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUpstreamResponse {
        try await self.client.execute(action: "DeleteUpstream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除后端通道
    ///
    /// 删除后端通道，需要注意有API绑定时，不允许删除
    @inlinable
    public func deleteUpstream(upstreamId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUpstreamResponse> {
        self.deleteUpstream(.init(upstreamId: upstreamId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除后端通道
    ///
    /// 删除后端通道，需要注意有API绑定时，不允许删除
    @inlinable
    public func deleteUpstream(upstreamId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUpstreamResponse {
        try await self.deleteUpstream(.init(upstreamId: upstreamId), region: region, logger: logger, on: eventLoop)
    }
}
