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

extension Tem {
    /// CreateResource请求参数结构体
    public struct CreateResourceRequest: TCRequestModel {
        /// 命名空间 Id
        public let namespaceId: String

        /// 资源类型，目前支持文件系统：CFS；日志服务：CLS；注册中心：TSE_SRE
        public let resourceType: String

        /// 资源 Id
        public let resourceId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(namespaceId: String, resourceType: String, resourceId: String, sourceChannel: Int64? = nil) {
            self.namespaceId = namespaceId
            self.resourceType = resourceType
            self.resourceId = resourceId
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case resourceType = "ResourceType"
            case resourceId = "ResourceId"
            case sourceChannel = "SourceChannel"
        }
    }

    /// CreateResource返回参数结构体
    public struct CreateResourceResponse: TCResponseModel {
        /// 成功与否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 绑定云资源
    @inlinable
    public func createResource(_ input: CreateResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourceResponse> {
        self.client.execute(action: "CreateResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定云资源
    @inlinable
    public func createResource(_ input: CreateResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceResponse {
        try await self.client.execute(action: "CreateResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定云资源
    @inlinable
    public func createResource(namespaceId: String, resourceType: String, resourceId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourceResponse> {
        self.createResource(.init(namespaceId: namespaceId, resourceType: resourceType, resourceId: resourceId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定云资源
    @inlinable
    public func createResource(namespaceId: String, resourceType: String, resourceId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceResponse {
        try await self.createResource(.init(namespaceId: namespaceId, resourceType: resourceType, resourceId: resourceId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
