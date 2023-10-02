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
    /// UpdateApiGroup请求参数结构体
    public struct UpdateApiGroupRequest: TCRequest {
        /// Api 分组ID
        public let groupId: String

        /// Api 分组名称
        public let groupName: String?

        /// Api 分组描述
        public let description: String?

        /// 鉴权类型。 secret： 密钥鉴权； none:无鉴权
        public let authType: String?

        /// 分组上下文
        public let groupContext: String?

        /// 命名空间参数key值
        public let namespaceNameKey: String?

        /// 微服务名参数key值
        public let serviceNameKey: String?

        /// 命名空间参数位置，path，header或query，默认是path
        public let namespaceNameKeyPosition: String?

        /// 微服务名参数位置，path，header或query，默认是path
        public let serviceNameKeyPosition: String?

        public init(groupId: String, groupName: String? = nil, description: String? = nil, authType: String? = nil, groupContext: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.description = description
            self.authType = authType
            self.groupContext = groupContext
            self.namespaceNameKey = namespaceNameKey
            self.serviceNameKey = serviceNameKey
            self.namespaceNameKeyPosition = namespaceNameKeyPosition
            self.serviceNameKeyPosition = serviceNameKeyPosition
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case description = "Description"
            case authType = "AuthType"
            case groupContext = "GroupContext"
            case namespaceNameKey = "NamespaceNameKey"
            case serviceNameKey = "ServiceNameKey"
            case namespaceNameKeyPosition = "NamespaceNameKeyPosition"
            case serviceNameKeyPosition = "ServiceNameKeyPosition"
        }
    }

    /// UpdateApiGroup返回参数结构体
    public struct UpdateApiGroupResponse: TCResponse {
        /// 返回结果，true: 成功, false: 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新Api分组
    @inlinable
    public func updateApiGroup(_ input: UpdateApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiGroupResponse> {
        self.client.execute(action: "UpdateApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Api分组
    @inlinable
    public func updateApiGroup(_ input: UpdateApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiGroupResponse {
        try await self.client.execute(action: "UpdateApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Api分组
    @inlinable
    public func updateApiGroup(groupId: String, groupName: String? = nil, description: String? = nil, authType: String? = nil, groupContext: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiGroupResponse> {
        self.updateApiGroup(.init(groupId: groupId, groupName: groupName, description: description, authType: authType, groupContext: groupContext, namespaceNameKey: namespaceNameKey, serviceNameKey: serviceNameKey, namespaceNameKeyPosition: namespaceNameKeyPosition, serviceNameKeyPosition: serviceNameKeyPosition), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Api分组
    @inlinable
    public func updateApiGroup(groupId: String, groupName: String? = nil, description: String? = nil, authType: String? = nil, groupContext: String? = nil, namespaceNameKey: String? = nil, serviceNameKey: String? = nil, namespaceNameKeyPosition: String? = nil, serviceNameKeyPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiGroupResponse {
        try await self.updateApiGroup(.init(groupId: groupId, groupName: groupName, description: description, authType: authType, groupContext: groupContext, namespaceNameKey: namespaceNameKey, serviceNameKey: serviceNameKey, namespaceNameKeyPosition: namespaceNameKeyPosition, serviceNameKeyPosition: serviceNameKeyPosition), region: region, logger: logger, on: eventLoop)
    }
}
