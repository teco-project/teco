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

extension Sts {
    /// AssumeRoleWithSAML请求参数结构体
    public struct AssumeRoleWithSAMLRequest: TCRequestModel {
        /// base64 编码的 SAML 断言信息
        public let samlAssertion: String

        /// 扮演者访问描述名
        public let principalArn: String

        /// 角色访问描述名
        public let roleArn: String

        /// 会话名称
        public let roleSessionName: String

        /// 指定临时访问凭证的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        public let durationSeconds: UInt64?

        public init(samlAssertion: String, principalArn: String, roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil) {
            self.samlAssertion = samlAssertion
            self.principalArn = principalArn
            self.roleArn = roleArn
            self.roleSessionName = roleSessionName
            self.durationSeconds = durationSeconds
        }

        enum CodingKeys: String, CodingKey {
            case samlAssertion = "SAMLAssertion"
            case principalArn = "PrincipalArn"
            case roleArn = "RoleArn"
            case roleSessionName = "RoleSessionName"
            case durationSeconds = "DurationSeconds"
        }
    }

    /// AssumeRoleWithSAML返回参数结构体
    public struct AssumeRoleWithSAMLResponse: TCResponseModel {
        /// 对象里面包含 Token，TmpSecretId，TmpSecretKey 三元组
        public let credentials: Credentials

        /// 临时访问凭证的过期时间，返回 Unix 时间戳，精确到秒
        public let expiredTime: UInt64

        /// 临时访问凭证的过期时间，以 ISO8601 格式的 UTC 时间表示
        public let expiration: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case credentials = "Credentials"
            case expiredTime = "ExpiredTime"
            case expiration = "Expiration"
            case requestId = "RequestId"
        }
    }

    /// 根据 SAML 断言申请角色临时访问凭证
    ///
    /// 本接口（AssumeRoleWithSAML）用于根据 SAML 断言申请角色临时访问凭证。
    ///
    /// 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。
    @inlinable
    public func assumeRoleWithSAML(_ input: AssumeRoleWithSAMLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleWithSAMLResponse> {
        self.client.execute(action: "AssumeRoleWithSAML", region: region, serviceConfig: self.config, skipAuthorization: true, input: input, logger: logger, on: eventLoop)
    }

    /// 根据 SAML 断言申请角色临时访问凭证
    ///
    /// 本接口（AssumeRoleWithSAML）用于根据 SAML 断言申请角色临时访问凭证。
    ///
    /// 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。
    @inlinable
    public func assumeRoleWithSAML(_ input: AssumeRoleWithSAMLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleWithSAMLResponse {
        try await self.client.execute(action: "AssumeRoleWithSAML", region: region, serviceConfig: self.config, skipAuthorization: true, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据 SAML 断言申请角色临时访问凭证
    ///
    /// 本接口（AssumeRoleWithSAML）用于根据 SAML 断言申请角色临时访问凭证。
    ///
    /// 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。
    @inlinable
    public func assumeRoleWithSAML(samlAssertion: String, principalArn: String, roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleWithSAMLResponse> {
        self.assumeRoleWithSAML(.init(samlAssertion: samlAssertion, principalArn: principalArn, roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据 SAML 断言申请角色临时访问凭证
    ///
    /// 本接口（AssumeRoleWithSAML）用于根据 SAML 断言申请角色临时访问凭证。
    ///
    /// 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。
    @inlinable
    public func assumeRoleWithSAML(samlAssertion: String, principalArn: String, roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleWithSAMLResponse {
        try await self.assumeRoleWithSAML(.init(samlAssertion: samlAssertion, principalArn: principalArn, roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds), region: region, logger: logger, on: eventLoop)
    }
}
