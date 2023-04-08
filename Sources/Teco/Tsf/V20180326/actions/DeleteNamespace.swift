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

import TecoCore

extension Tsf {
    /// DeleteNamespace请求参数结构体
    public struct DeleteNamespaceRequest: TCRequestModel {
        /// 命名空间ID
        public let namespaceId: String

        /// 集群ID
        public let clusterId: String?

        public init(namespaceId: String, clusterId: String? = nil) {
            self.namespaceId = namespaceId
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
        }
    }

    /// DeleteNamespace返回参数结构体
    public struct DeleteNamespaceResponse: TCResponseModel {
        /// 删除命名空间是否成功。
        /// true：删除成功。
        /// false：删除失败。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        self.client.execute(action: "DeleteNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.client.execute(action: "DeleteNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(namespaceId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        self.deleteNamespace(.init(namespaceId: namespaceId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    @inlinable
    public func deleteNamespace(namespaceId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.deleteNamespace(.init(namespaceId: namespaceId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
