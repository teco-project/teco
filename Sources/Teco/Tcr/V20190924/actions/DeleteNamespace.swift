//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcr {
    /// DeleteNamespace请求参数结构体
    public struct DeleteNamespaceRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 命名空间的名称
        public let namespaceName: String

        public init(registryId: String, namespaceName: String) {
            self.registryId = registryId
            self.namespaceName = namespaceName
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
        }
    }

    /// DeleteNamespace返回参数结构体
    public struct DeleteNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNamespaceResponse > {
        self.client.execute(action: "DeleteNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.client.execute(action: "DeleteNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(registryId: String, namespaceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNamespaceResponse > {
        self.deleteNamespace(DeleteNamespaceRequest(registryId: registryId, namespaceName: namespaceName), logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(registryId: String, namespaceName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.deleteNamespace(DeleteNamespaceRequest(registryId: registryId, namespaceName: namespaceName), logger: logger, on: eventLoop)
    }
}
