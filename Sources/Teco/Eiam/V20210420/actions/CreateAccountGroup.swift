//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// CreateAccountGroup请求参数结构体
    public struct CreateAccountGroupRequest: TCRequestModel {
        /// 应用ID。
        public let applicationId: String

        /// 账号组名。
        public let groupName: String

        /// 描述。
        public let description: String?

        public init(applicationId: String, groupName: String, description: String? = nil) {
            self.applicationId = applicationId
            self.groupName = groupName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case groupName = "GroupName"
            case description = "Description"
        }
    }

    /// CreateAccountGroup返回参数结构体
    public struct CreateAccountGroupResponse: TCResponseModel {
        /// 账号组ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountGroupId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accountGroupId = "AccountGroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建账号组
    @inlinable
    public func createAccountGroup(_ input: CreateAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountGroupResponse> {
        self.client.execute(action: "CreateAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建账号组
    @inlinable
    public func createAccountGroup(_ input: CreateAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountGroupResponse {
        try await self.client.execute(action: "CreateAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建账号组
    @inlinable
    public func createAccountGroup(applicationId: String, groupName: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountGroupResponse> {
        self.createAccountGroup(CreateAccountGroupRequest(applicationId: applicationId, groupName: groupName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建账号组
    @inlinable
    public func createAccountGroup(applicationId: String, groupName: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountGroupResponse {
        try await self.createAccountGroup(CreateAccountGroupRequest(applicationId: applicationId, groupName: groupName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
