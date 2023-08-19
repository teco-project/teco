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
    /// DeleteNamespace请求参数结构体
    public struct DeleteNamespaceRequest: TCRequest {
        /// 命名空间名称
        public let namespace: String

        public init(namespace: String) {
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
        }
    }

    /// DeleteNamespace返回参数结构体
    public struct DeleteNamespaceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除命名空间
    ///
    /// 该接口根据传入的参数删除命名空间。
    @inlinable @discardableResult
    public func deleteNamespace(_ input: DeleteNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        self.client.execute(action: "DeleteNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    ///
    /// 该接口根据传入的参数删除命名空间。
    @inlinable @discardableResult
    public func deleteNamespace(_ input: DeleteNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.client.execute(action: "DeleteNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除命名空间
    ///
    /// 该接口根据传入的参数删除命名空间。
    @inlinable @discardableResult
    public func deleteNamespace(namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        self.deleteNamespace(.init(namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    ///
    /// 该接口根据传入的参数删除命名空间。
    @inlinable @discardableResult
    public func deleteNamespace(namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.deleteNamespace(.init(namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
