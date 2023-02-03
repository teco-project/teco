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

extension Eiam {
    /// DescribeUserGroupResourcesAuthorization请求参数结构体
    public struct DescribeUserGroupResourcesAuthorizationRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String

        /// 用户组ID
        public let userGroupId: String

        public init(applicationId: String, userGroupId: String) {
            self.applicationId = applicationId
            self.userGroupId = userGroupId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case userGroupId = "UserGroupId"
        }
    }

    /// DescribeUserGroupResourcesAuthorization返回参数结构体
    public struct DescribeUserGroupResourcesAuthorizationResponse: TCResponseModel {
        /// 应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 用户组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupId: String?

        /// 用户组名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupName: String?

        /// 资源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizationUserGroupResourceList: [AuthorizationResourceEntityInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case userGroupId = "UserGroupId"
            case userGroupName = "UserGroupName"
            case authorizationUserGroupResourceList = "AuthorizationUserGroupResourceList"
            case requestId = "RequestId"
        }
    }

    /// 查询指定用户组下的资源授权列表
    @inlinable
    public func describeUserGroupResourcesAuthorization(_ input: DescribeUserGroupResourcesAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserGroupResourcesAuthorizationResponse> {
        self.client.execute(action: "DescribeUserGroupResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定用户组下的资源授权列表
    @inlinable
    public func describeUserGroupResourcesAuthorization(_ input: DescribeUserGroupResourcesAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupResourcesAuthorizationResponse {
        try await self.client.execute(action: "DescribeUserGroupResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定用户组下的资源授权列表
    @inlinable
    public func describeUserGroupResourcesAuthorization(applicationId: String, userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserGroupResourcesAuthorizationResponse> {
        let input = DescribeUserGroupResourcesAuthorizationRequest(applicationId: applicationId, userGroupId: userGroupId)
        return self.client.execute(action: "DescribeUserGroupResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定用户组下的资源授权列表
    @inlinable
    public func describeUserGroupResourcesAuthorization(applicationId: String, userGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupResourcesAuthorizationResponse {
        let input = DescribeUserGroupResourcesAuthorizationRequest(applicationId: applicationId, userGroupId: userGroupId)
        return try await self.client.execute(action: "DescribeUserGroupResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
