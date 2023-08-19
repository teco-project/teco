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
    /// CreateNamespace请求参数结构体
    public struct CreateNamespaceRequest: TCRequest {
        /// 命名空间名称
        public let namespaceName: String

        /// 私有网络名称
        public let vpc: String

        /// 子网列表
        public let subnetIds: [String]

        /// 命名空间描述
        public let description: String?

        /// K8s version
        public let k8sVersion: String?

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 是否开启tsw服务
        public let enableTswTraceService: Bool?

        public init(namespaceName: String, vpc: String, subnetIds: [String], description: String? = nil, k8sVersion: String? = nil, sourceChannel: Int64? = nil, enableTswTraceService: Bool? = nil) {
            self.namespaceName = namespaceName
            self.vpc = vpc
            self.subnetIds = subnetIds
            self.description = description
            self.k8sVersion = k8sVersion
            self.sourceChannel = sourceChannel
            self.enableTswTraceService = enableTswTraceService
        }

        enum CodingKeys: String, CodingKey {
            case namespaceName = "NamespaceName"
            case vpc = "Vpc"
            case subnetIds = "SubnetIds"
            case description = "Description"
            case k8sVersion = "K8sVersion"
            case sourceChannel = "SourceChannel"
            case enableTswTraceService = "EnableTswTraceService"
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
    ///
    /// 创建环境
    @inlinable
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 创建环境
    @inlinable
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    ///
    /// 创建环境
    @inlinable
    public func createNamespace(namespaceName: String, vpc: String, subnetIds: [String], description: String? = nil, k8sVersion: String? = nil, sourceChannel: Int64? = nil, enableTswTraceService: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.createNamespace(.init(namespaceName: namespaceName, vpc: vpc, subnetIds: subnetIds, description: description, k8sVersion: k8sVersion, sourceChannel: sourceChannel, enableTswTraceService: enableTswTraceService), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 创建环境
    @inlinable
    public func createNamespace(namespaceName: String, vpc: String, subnetIds: [String], description: String? = nil, k8sVersion: String? = nil, sourceChannel: Int64? = nil, enableTswTraceService: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.createNamespace(.init(namespaceName: namespaceName, vpc: vpc, subnetIds: subnetIds, description: description, k8sVersion: k8sVersion, sourceChannel: sourceChannel, enableTswTraceService: enableTswTraceService), region: region, logger: logger, on: eventLoop)
    }
}
