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

extension Sts {
    /// GetCallerIdentity请求参数结构体
    public struct GetCallerIdentityRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetCallerIdentity返回参数结构体
    public struct GetCallerIdentityResponse: TCResponseModel {
        /// 当前调用者ARN。
        public let arn: String

        /// 当前调用者所属主账号Uin。
        public let accountId: String

        /// 身份标识。
        /// 1. 调用者是云账号时，返回的是当前账号Uin
        /// 2. 调用者是角色时，返回的是roleId:roleSessionName
        /// 3. 调用者是联合身份时，返回的是uin:federatedUserName
        public let userId: String

        /// 密钥所属账号Uin。
        /// 1. 调用者是云账号，返回的当前账号Uin
        /// 2, 调用者是角色，返回的申请角色密钥的账号Uin
        public let principalId: String

        /// 身份类型。
        public let type: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case accountId = "AccountId"
            case userId = "UserId"
            case principalId = "PrincipalId"
            case type = "Type"
            case requestId = "RequestId"
        }
    }

    /// 获取当前调用者的身份信息
    ///
    /// 获取当前调用者的身份信息。
    /// 接口支持主账号，子账号长期密钥以及AssumeRole，GetFederationToken生成的临时凭据的身份获取。
    @inlinable
    public func getCallerIdentity(_ input: GetCallerIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCallerIdentityResponse> {
        self.client.execute(action: "GetCallerIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前调用者的身份信息
    ///
    /// 获取当前调用者的身份信息。
    /// 接口支持主账号，子账号长期密钥以及AssumeRole，GetFederationToken生成的临时凭据的身份获取。
    @inlinable
    public func getCallerIdentity(_ input: GetCallerIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCallerIdentityResponse {
        try await self.client.execute(action: "GetCallerIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前调用者的身份信息
    ///
    /// 获取当前调用者的身份信息。
    /// 接口支持主账号，子账号长期密钥以及AssumeRole，GetFederationToken生成的临时凭据的身份获取。
    @inlinable
    public func getCallerIdentity(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCallerIdentityResponse> {
        self.getCallerIdentity(GetCallerIdentityRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取当前调用者的身份信息
    ///
    /// 获取当前调用者的身份信息。
    /// 接口支持主账号，子账号长期密钥以及AssumeRole，GetFederationToken生成的临时凭据的身份获取。
    @inlinable
    public func getCallerIdentity(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCallerIdentityResponse {
        try await self.getCallerIdentity(GetCallerIdentityRequest(), region: region, logger: logger, on: eventLoop)
    }
}
