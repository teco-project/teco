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

extension Chdfs {
    /// CreateAccessRules请求参数结构体
    public struct CreateAccessRulesRequest: TCRequestModel {
        /// 多个权限规则，上限为10
        public let accessRules: [AccessRule]

        /// 权限组ID
        public let accessGroupId: String

        public init(accessRules: [AccessRule], accessGroupId: String) {
            self.accessRules = accessRules
            self.accessGroupId = accessGroupId
        }

        enum CodingKeys: String, CodingKey {
            case accessRules = "AccessRules"
            case accessGroupId = "AccessGroupId"
        }
    }

    /// CreateAccessRules返回参数结构体
    public struct CreateAccessRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量创建权限规则
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 批量创建权限规则，权限规则ID和创建时间无需填写。
    @inlinable @discardableResult
    public func createAccessRules(_ input: CreateAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessRulesResponse> {
        self.client.execute(action: "CreateAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建权限规则
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 批量创建权限规则，权限规则ID和创建时间无需填写。
    @inlinable @discardableResult
    public func createAccessRules(_ input: CreateAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessRulesResponse {
        try await self.client.execute(action: "CreateAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建权限规则
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 批量创建权限规则，权限规则ID和创建时间无需填写。
    @inlinable @discardableResult
    public func createAccessRules(accessRules: [AccessRule], accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessRulesResponse> {
        self.createAccessRules(CreateAccessRulesRequest(accessRules: accessRules, accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建权限规则
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 批量创建权限规则，权限规则ID和创建时间无需填写。
    @inlinable @discardableResult
    public func createAccessRules(accessRules: [AccessRule], accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessRulesResponse {
        try await self.createAccessRules(CreateAccessRulesRequest(accessRules: accessRules, accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }
}
