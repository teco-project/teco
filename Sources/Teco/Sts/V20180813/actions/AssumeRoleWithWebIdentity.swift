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

extension Sts {
    /// AssumeRoleWithWebIdentity请求参数结构体
    public struct AssumeRoleWithWebIdentityRequest: TCRequestModel {
        /// 身份提供商名称
        public let providerId: String

        /// IdP签发的OIDC令牌
        public let webIdentityToken: String

        /// 角色访问描述名
        public let roleArn: String

        /// 会话名称
        public let roleSessionName: String

        /// 指定临时证书的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        public let durationSeconds: Int64?

        public init(providerId: String, webIdentityToken: String, roleArn: String, roleSessionName: String, durationSeconds: Int64? = nil) {
            self.providerId = providerId
            self.webIdentityToken = webIdentityToken
            self.roleArn = roleArn
            self.roleSessionName = roleSessionName
            self.durationSeconds = durationSeconds
        }

        enum CodingKeys: String, CodingKey {
            case providerId = "ProviderId"
            case webIdentityToken = "WebIdentityToken"
            case roleArn = "RoleArn"
            case roleSessionName = "RoleSessionName"
            case durationSeconds = "DurationSeconds"
        }
    }

    /// AssumeRoleWithWebIdentity返回参数结构体
    public struct AssumeRoleWithWebIdentityResponse: TCResponseModel {
        /// 临时密钥过期时间(时间戳)
        public let expiredTime: UInt64

        /// 临时密钥过期时间
        public let expiration: String

        /// 临时密钥
        public let credentials: Credentials

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case expiredTime = "ExpiredTime"
            case expiration = "Expiration"
            case credentials = "Credentials"
            case requestId = "RequestId"
        }
    }

    /// 申请OIDC角色临时密钥
    @inlinable
    public func assumeRoleWithWebIdentity(_ input: AssumeRoleWithWebIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleWithWebIdentityResponse> {
        self.client.execute(action: "AssumeRoleWithWebIdentity", region: region, serviceConfig: self.config, skipAuthorization: true, input: input, logger: logger, on: eventLoop)
    }

    /// 申请OIDC角色临时密钥
    @inlinable
    public func assumeRoleWithWebIdentity(_ input: AssumeRoleWithWebIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleWithWebIdentityResponse {
        try await self.client.execute(action: "AssumeRoleWithWebIdentity", region: region, serviceConfig: self.config, skipAuthorization: true, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请OIDC角色临时密钥
    @inlinable
    public func assumeRoleWithWebIdentity(providerId: String, webIdentityToken: String, roleArn: String, roleSessionName: String, durationSeconds: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleWithWebIdentityResponse> {
        self.assumeRoleWithWebIdentity(AssumeRoleWithWebIdentityRequest(providerId: providerId, webIdentityToken: webIdentityToken, roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds), region: region, logger: logger, on: eventLoop)
    }

    /// 申请OIDC角色临时密钥
    @inlinable
    public func assumeRoleWithWebIdentity(providerId: String, webIdentityToken: String, roleArn: String, roleSessionName: String, durationSeconds: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleWithWebIdentityResponse {
        try await self.assumeRoleWithWebIdentity(AssumeRoleWithWebIdentityRequest(providerId: providerId, webIdentityToken: webIdentityToken, roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds), region: region, logger: logger, on: eventLoop)
    }
}
