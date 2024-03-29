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

extension Scf {
    /// UpdateNamespace请求参数结构体
    public struct UpdateNamespaceRequest: TCRequest {
        /// 命名空间名称
        public let namespace: String

        /// 命名空间描述
        public let description: String

        public init(namespace: String, description: String) {
            self.namespace = namespace
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case description = "Description"
        }
    }

    /// UpdateNamespace返回参数结构体
    public struct UpdateNamespaceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新命名空间
    @inlinable @discardableResult
    public func updateNamespace(_ input: UpdateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNamespaceResponse> {
        self.client.execute(action: "UpdateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新命名空间
    @inlinable @discardableResult
    public func updateNamespace(_ input: UpdateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNamespaceResponse {
        try await self.client.execute(action: "UpdateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新命名空间
    @inlinable @discardableResult
    public func updateNamespace(namespace: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNamespaceResponse> {
        self.updateNamespace(.init(namespace: namespace, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新命名空间
    @inlinable @discardableResult
    public func updateNamespace(namespace: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNamespaceResponse {
        try await self.updateNamespace(.init(namespace: namespace, description: description), region: region, logger: logger, on: eventLoop)
    }
}
