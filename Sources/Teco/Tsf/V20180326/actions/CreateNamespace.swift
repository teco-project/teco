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

extension Tsf {
    /// CreateNamespace请求参数结构体
    public struct CreateNamespaceRequest: TCRequest {
        /// 命名空间名称
        public let namespaceName: String

        /// 集群ID
        public let clusterId: String?

        /// 命名空间描述
        public let namespaceDesc: String?

        /// 命名空间资源类型(默认值为DEF)
        public let namespaceResourceType: String?

        /// 是否是全局命名空间(默认是DEF，表示普通命名空间；GLOBAL表示全局命名空间)
        public let namespaceType: String?

        /// 命名空间ID
        public let namespaceId: String?

        /// 是否开启高可用
        public let isHaEnable: String?

        /// 需要绑定的数据集ID
        public let programId: String?

        public let programIdList: [String]?

        public init(namespaceName: String, clusterId: String? = nil, namespaceDesc: String? = nil, namespaceResourceType: String? = nil, namespaceType: String? = nil, namespaceId: String? = nil, isHaEnable: String? = nil, programId: String? = nil, programIdList: [String]? = nil) {
            self.namespaceName = namespaceName
            self.clusterId = clusterId
            self.namespaceDesc = namespaceDesc
            self.namespaceResourceType = namespaceResourceType
            self.namespaceType = namespaceType
            self.namespaceId = namespaceId
            self.isHaEnable = isHaEnable
            self.programId = programId
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case namespaceName = "NamespaceName"
            case clusterId = "ClusterId"
            case namespaceDesc = "NamespaceDesc"
            case namespaceResourceType = "NamespaceResourceType"
            case namespaceType = "NamespaceType"
            case namespaceId = "NamespaceId"
            case isHaEnable = "IsHaEnable"
            case programId = "ProgramId"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateNamespace返回参数结构体
    public struct CreateNamespaceResponse: TCResponse {
        /// 成功时为命名空间ID，失败为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建命名空间
    @inlinable
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    @inlinable
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    @inlinable
    public func createNamespace(namespaceName: String, clusterId: String? = nil, namespaceDesc: String? = nil, namespaceResourceType: String? = nil, namespaceType: String? = nil, namespaceId: String? = nil, isHaEnable: String? = nil, programId: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.createNamespace(.init(namespaceName: namespaceName, clusterId: clusterId, namespaceDesc: namespaceDesc, namespaceResourceType: namespaceResourceType, namespaceType: namespaceType, namespaceId: namespaceId, isHaEnable: isHaEnable, programId: programId, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    @inlinable
    public func createNamespace(namespaceName: String, clusterId: String? = nil, namespaceDesc: String? = nil, namespaceResourceType: String? = nil, namespaceType: String? = nil, namespaceId: String? = nil, isHaEnable: String? = nil, programId: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.createNamespace(.init(namespaceName: namespaceName, clusterId: clusterId, namespaceDesc: namespaceDesc, namespaceResourceType: namespaceResourceType, namespaceType: namespaceType, namespaceId: namespaceId, isHaEnable: isHaEnable, programId: programId, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
