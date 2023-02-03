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

extension Iecp {
    /// CreateNamespace请求参数结构体
    public struct CreateNamespaceRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// 命名空间
        public let namespace: String

        /// 描述信息
        public let description: String?

        public init(edgeUnitID: UInt64, namespace: String, description: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.namespace = namespace
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
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
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    @inlinable @discardableResult
    public func createNamespace(edgeUnitID: UInt64, namespace: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        let input = CreateNamespaceRequest(edgeUnitID: edgeUnitID, namespace: namespace, description: description)
        return self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    @inlinable @discardableResult
    public func createNamespace(edgeUnitID: UInt64, namespace: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        let input = CreateNamespaceRequest(edgeUnitID: edgeUnitID, namespace: namespace, description: description)
        return try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
