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

extension Tsf {
    /// CreateGroup请求参数结构体
    public struct CreateGroupRequest: TCRequestModel {
        /// 部署组所属的应用ID
        public let applicationId: String

        /// 部署组所属命名空间ID
        public let namespaceId: String

        /// 部署组名称
        public let groupName: String

        /// 集群ID
        public let clusterId: String

        /// 部署组描述
        public let groupDesc: String?

        /// 部署组资源类型
        public let groupResourceType: String?

        /// 部署组备注
        public let alias: String?

        public init(applicationId: String, namespaceId: String, groupName: String, clusterId: String, groupDesc: String? = nil, groupResourceType: String? = nil, alias: String? = nil) {
            self.applicationId = applicationId
            self.namespaceId = namespaceId
            self.groupName = groupName
            self.clusterId = clusterId
            self.groupDesc = groupDesc
            self.groupResourceType = groupResourceType
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case namespaceId = "NamespaceId"
            case groupName = "GroupName"
            case clusterId = "ClusterId"
            case groupDesc = "GroupDesc"
            case groupResourceType = "GroupResourceType"
            case alias = "Alias"
        }
    }

    /// CreateGroup返回参数结构体
    public struct CreateGroupResponse: TCResponseModel {
        /// groupId， null表示创建失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建部署组
    ///
    /// 创建虚拟机部署组
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建部署组
    ///
    /// 创建虚拟机部署组
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建部署组
    ///
    /// 创建虚拟机部署组
    @inlinable
    public func createGroup(applicationId: String, namespaceId: String, groupName: String, clusterId: String, groupDesc: String? = nil, groupResourceType: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        let input = CreateGroupRequest(applicationId: applicationId, namespaceId: namespaceId, groupName: groupName, clusterId: clusterId, groupDesc: groupDesc, groupResourceType: groupResourceType, alias: alias)
        return self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建部署组
    ///
    /// 创建虚拟机部署组
    @inlinable
    public func createGroup(applicationId: String, namespaceId: String, groupName: String, clusterId: String, groupDesc: String? = nil, groupResourceType: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        let input = CreateGroupRequest(applicationId: applicationId, namespaceId: namespaceId, groupName: groupName, clusterId: clusterId, groupDesc: groupDesc, groupResourceType: groupResourceType, alias: alias)
        return try await self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
