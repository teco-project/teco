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

extension Ckafka {
    /// DeleteConnectResource请求参数结构体
    public struct DeleteConnectResourceRequest: TCRequest {
        /// 连接源的Id
        public let resourceId: String

        public init(resourceId: String) {
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
        }
    }

    /// DeleteConnectResource返回参数结构体
    public struct DeleteConnectResourceResponse: TCResponse {
        /// 连接源的Id
        public let result: ConnectResourceResourceIdResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除Datahub连接源
    @inlinable
    public func deleteConnectResource(_ input: DeleteConnectResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectResourceResponse> {
        self.client.execute(action: "DeleteConnectResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Datahub连接源
    @inlinable
    public func deleteConnectResource(_ input: DeleteConnectResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectResourceResponse {
        try await self.client.execute(action: "DeleteConnectResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Datahub连接源
    @inlinable
    public func deleteConnectResource(resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectResourceResponse> {
        self.deleteConnectResource(.init(resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Datahub连接源
    @inlinable
    public func deleteConnectResource(resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectResourceResponse {
        try await self.deleteConnectResource(.init(resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
