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

extension Tem {
    /// ModifyNamespace请求参数结构体
    public struct ModifyNamespaceRequest: TCRequest {
        /// 环境id
        public let namespaceId: String

        /// 命名空间名称
        public let namespaceName: String?

        /// 命名空间描述
        public let description: String?

        /// 私有网络名称
        public let vpc: String?

        /// 子网网络
        public let subnetIds: [String]?

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(namespaceId: String, namespaceName: String? = nil, description: String? = nil, vpc: String? = nil, subnetIds: [String]? = nil, sourceChannel: Int64? = nil) {
            self.namespaceId = namespaceId
            self.namespaceName = namespaceName
            self.description = description
            self.vpc = vpc
            self.subnetIds = subnetIds
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case namespaceName = "NamespaceName"
            case description = "Description"
            case vpc = "Vpc"
            case subnetIds = "SubnetIds"
            case sourceChannel = "SourceChannel"
        }
    }

    /// ModifyNamespace返回参数结构体
    public struct ModifyNamespaceResponse: TCResponse {
        /// 成功时为命名空间ID，失败为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 编辑命名空间
    ///
    /// 编辑环境
    @inlinable
    public func modifyNamespace(_ input: ModifyNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNamespaceResponse> {
        self.client.execute(action: "ModifyNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑命名空间
    ///
    /// 编辑环境
    @inlinable
    public func modifyNamespace(_ input: ModifyNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNamespaceResponse {
        try await self.client.execute(action: "ModifyNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑命名空间
    ///
    /// 编辑环境
    @inlinable
    public func modifyNamespace(namespaceId: String, namespaceName: String? = nil, description: String? = nil, vpc: String? = nil, subnetIds: [String]? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNamespaceResponse> {
        self.modifyNamespace(.init(namespaceId: namespaceId, namespaceName: namespaceName, description: description, vpc: vpc, subnetIds: subnetIds, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑命名空间
    ///
    /// 编辑环境
    @inlinable
    public func modifyNamespace(namespaceId: String, namespaceName: String? = nil, description: String? = nil, vpc: String? = nil, subnetIds: [String]? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNamespaceResponse {
        try await self.modifyNamespace(.init(namespaceId: namespaceId, namespaceName: namespaceName, description: description, vpc: vpc, subnetIds: subnetIds, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
