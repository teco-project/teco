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

extension Vpc {
    /// CloneSecurityGroup请求参数结构体
    public struct CloneSecurityGroupRequest: TCRequestModel {
        /// 安全组实例ID，例如sg-33ocnj9n，可通过[DescribeSecurityGroups](https://cloud.tencent.com/document/product/215/15808)获取。
        public let securityGroupId: String

        /// 安全组名称，可任意命名，但不得超过60个字符。未提供参数时，克隆后的安全组名称和SecurityGroupId对应的安全组名称相同。
        public let groupName: String?

        /// 安全组备注，最多100个字符。未提供参数时，克隆后的安全组备注和SecurityGroupId对应的安全组备注相同。
        public let groupDescription: String?

        /// 项目ID，默认0。可在[qcloud控制台项目管理页面](https://console.cloud.tencent.com/project)查询到。
        public let projectId: String?

        /// 源Region,跨地域克隆安全组时，需要传入源安全组所属地域信息，例如：克隆广州的安全组到上海，则这里需要传入广州安全的地域信息：ap-guangzhou。
        public let remoteRegion: String?

        public init(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil, projectId: String? = nil, remoteRegion: String? = nil) {
            self.securityGroupId = securityGroupId
            self.groupName = groupName
            self.groupDescription = groupDescription
            self.projectId = projectId
            self.remoteRegion = remoteRegion
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case groupName = "GroupName"
            case groupDescription = "GroupDescription"
            case projectId = "ProjectId"
            case remoteRegion = "RemoteRegion"
        }
    }

    /// CloneSecurityGroup返回参数结构体
    public struct CloneSecurityGroupResponse: TCResponseModel {
        /// 安全组对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let securityGroup: SecurityGroup?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroup = "SecurityGroup"
            case requestId = "RequestId"
        }
    }

    /// 克隆安全组
    ///
    /// 本接口（CloneSecurityGroup）用于根据存量的安全组，克隆创建出同样规则配置的安全组。仅克隆安全组及其规则信息，不会克隆安全组标签信息。
    @inlinable
    public func cloneSecurityGroup(_ input: CloneSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneSecurityGroupResponse> {
        self.client.execute(action: "CloneSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆安全组
    ///
    /// 本接口（CloneSecurityGroup）用于根据存量的安全组，克隆创建出同样规则配置的安全组。仅克隆安全组及其规则信息，不会克隆安全组标签信息。
    @inlinable
    public func cloneSecurityGroup(_ input: CloneSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneSecurityGroupResponse {
        try await self.client.execute(action: "CloneSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 克隆安全组
    ///
    /// 本接口（CloneSecurityGroup）用于根据存量的安全组，克隆创建出同样规则配置的安全组。仅克隆安全组及其规则信息，不会克隆安全组标签信息。
    @inlinable
    public func cloneSecurityGroup(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil, projectId: String? = nil, remoteRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneSecurityGroupResponse> {
        self.cloneSecurityGroup(.init(securityGroupId: securityGroupId, groupName: groupName, groupDescription: groupDescription, projectId: projectId, remoteRegion: remoteRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 克隆安全组
    ///
    /// 本接口（CloneSecurityGroup）用于根据存量的安全组，克隆创建出同样规则配置的安全组。仅克隆安全组及其规则信息，不会克隆安全组标签信息。
    @inlinable
    public func cloneSecurityGroup(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil, projectId: String? = nil, remoteRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneSecurityGroupResponse {
        try await self.cloneSecurityGroup(.init(securityGroupId: securityGroupId, groupName: groupName, groupDescription: groupDescription, projectId: projectId, remoteRegion: remoteRegion), region: region, logger: logger, on: eventLoop)
    }
}
