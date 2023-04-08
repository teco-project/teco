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
    /// CreateNamespace请求参数结构体
    public struct CreateNamespaceRequest: TCRequestModel {
        /// 命名空间名称
        public let namespace: String

        /// 命名空间描述
        public let description: String?

        public init(namespace: String, description: String? = nil) {
            self.namespace = namespace
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case description = "Description"
        }
    }

    /// CreateNamespace返回参数结构体
    public struct CreateNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建命名空间
    ///
    /// 该接口根据传入的参数创建命名空间。
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 该接口根据传入的参数创建命名空间。
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    ///
    /// 该接口根据传入的参数创建命名空间。
    @inlinable @discardableResult
    public func createNamespace(namespace: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.createNamespace(.init(namespace: namespace, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 该接口根据传入的参数创建命名空间。
    @inlinable @discardableResult
    public func createNamespace(namespace: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.createNamespace(.init(namespace: namespace, description: description), region: region, logger: logger, on: eventLoop)
    }
}
