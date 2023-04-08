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
    /// CreateApiGroup请求参数结构体
    public struct CreateApiGroupRequest: TCRequestModel {
        /// 分组名称, 不能包含中文
        public let groupName: String

        /// 分组上下文
        public let groupContext: String

        /// 鉴权类型。secret： 密钥鉴权； none:无鉴权
        public let authType: String?

        /// 备注
        public let description: String?

        /// 分组类型,默认ms。 ms： 微服务分组； external:外部Api分组
        public let groupType: String?

        /// 网关实体ID
        public let gatewayInstanceId: String?

        /// 命名空间参数key值
        public let namespaceNameKey: String?

        /// 微服务名参数key值
        public let serviceNameKey: String?

        /// 命名空间参数位置，path，header或query，默认是path
        public let namespaceNameKeyPosition: String?

        /// 微服务名参数位置，path，header或query，默认是path
        public let serviceNameKeyPosition: String?

        public init(groupName: String, groupContext: String, authType: String? = nil, description: String? = nil, groupType: String? = nil, gatewayInstanceId: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil) {
            self.groupName = groupName
            self.groupContext = groupContext
            self.authType = authType
            self.description = description
            self.groupType = groupType
            self.gatewayInstanceId = gatewayInstanceId
            self.namespaceNameKey = namespaceNameKey
            self.serviceNameKey = serviceNameKey
            self.namespaceNameKeyPosition = namespaceNameKeyPosition
            self.serviceNameKeyPosition = serviceNameKeyPosition
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupContext = "GroupContext"
            case authType = "AuthType"
            case description = "Description"
            case groupType = "GroupType"
            case gatewayInstanceId = "GatewayInstanceId"
            case namespaceNameKey = "NamespaceNameKey"
            case serviceNameKey = "ServiceNameKey"
            case namespaceNameKeyPosition = "NamespaceNameKeyPosition"
            case serviceNameKeyPosition = "ServiceNameKeyPosition"
        }
    }

    /// CreateApiGroup返回参数结构体
    public struct CreateApiGroupResponse: TCResponseModel {
        /// API分组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建API分组
    @inlinable
    public func createApiGroup(_ input: CreateApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiGroupResponse> {
        self.client.execute(action: "CreateApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建API分组
    @inlinable
    public func createApiGroup(_ input: CreateApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiGroupResponse {
        try await self.client.execute(action: "CreateApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建API分组
    @inlinable
    public func createApiGroup(groupName: String, groupContext: String, authType: String? = nil, description: String? = nil, groupType: String? = nil, gatewayInstanceId: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiGroupResponse> {
        self.createApiGroup(.init(groupName: groupName, groupContext: groupContext, authType: authType, description: description, groupType: groupType, gatewayInstanceId: gatewayInstanceId, namespaceNameKey: namespaceNameKey, serviceNameKey: serviceNameKey, namespaceNameKeyPosition: namespaceNameKeyPosition, serviceNameKeyPosition: serviceNameKeyPosition), region: region, logger: logger, on: eventLoop)
    }

    /// 创建API分组
    @inlinable
    public func createApiGroup(groupName: String, groupContext: String, authType: String? = nil, description: String? = nil, groupType: String? = nil, gatewayInstanceId: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiGroupResponse {
        try await self.createApiGroup(.init(groupName: groupName, groupContext: groupContext, authType: authType, description: description, groupType: groupType, gatewayInstanceId: gatewayInstanceId, namespaceNameKey: namespaceNameKey, serviceNameKey: serviceNameKey, namespaceNameKeyPosition: namespaceNameKeyPosition, serviceNameKeyPosition: serviceNameKeyPosition), region: region, logger: logger, on: eventLoop)
    }
}
