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
    /// DescribeUserResourcesAuthorization请求参数结构体
    public struct DescribeUserResourcesAuthorizationRequest: TCRequestModel {
        /// 应用ID。
        public let applicationId: String

        /// 用户ID。UserName 和 UserId 需至少一个不为空；都不为空时优先使用 UserName。
        public let userId: String?

        /// 用户名。UserName 和 UserId 需至少一个不为空；都不为空时优先使用 UserName。
        public let userName: String?

        /// 查询范围是否包括用户关联的用户组、组织机构的应用访问权限。默认为不查询 ，传false表示不查询该范围，传true查询该范围。
        public let includeInheritedAuthorizations: Bool?

        public init(applicationId: String, userId: String? = nil, userName: String? = nil, includeInheritedAuthorizations: Bool? = nil) {
            self.applicationId = applicationId
            self.userId = userId
            self.userName = userName
            self.includeInheritedAuthorizations = includeInheritedAuthorizations
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case userId = "UserId"
            case userName = "UserName"
            case includeInheritedAuthorizations = "IncludeInheritedAuthorizations"
        }
    }

    /// DescribeUserResourcesAuthorization返回参数结构体
    public struct DescribeUserResourcesAuthorizationResponse: TCResponseModel {
        /// 应用的唯一ID。
        public let applicationId: String

        /// 应用账户。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationAccounts: [String]?

        /// 授权用户的唯一ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 授权的用户名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 返回的资源列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizationUserResourceList: [AuthorizationUserResouceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case applicationAccounts = "ApplicationAccounts"
            case userId = "UserId"
            case userName = "UserName"
            case authorizationUserResourceList = "AuthorizationUserResourceList"
            case requestId = "RequestId"
        }
    }

    /// 查询指定用户下的资源授权列表
    @inlinable
    public func describeUserResourcesAuthorization(_ input: DescribeUserResourcesAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResourcesAuthorizationResponse> {
        self.client.execute(action: "DescribeUserResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定用户下的资源授权列表
    @inlinable
    public func describeUserResourcesAuthorization(_ input: DescribeUserResourcesAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResourcesAuthorizationResponse {
        try await self.client.execute(action: "DescribeUserResourcesAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定用户下的资源授权列表
    @inlinable
    public func describeUserResourcesAuthorization(applicationId: String, userId: String? = nil, userName: String? = nil, includeInheritedAuthorizations: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResourcesAuthorizationResponse> {
        self.describeUserResourcesAuthorization(.init(applicationId: applicationId, userId: userId, userName: userName, includeInheritedAuthorizations: includeInheritedAuthorizations), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定用户下的资源授权列表
    @inlinable
    public func describeUserResourcesAuthorization(applicationId: String, userId: String? = nil, userName: String? = nil, includeInheritedAuthorizations: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResourcesAuthorizationResponse {
        try await self.describeUserResourcesAuthorization(.init(applicationId: applicationId, userId: userId, userName: userName, includeInheritedAuthorizations: includeInheritedAuthorizations), region: region, logger: logger, on: eventLoop)
    }
}
