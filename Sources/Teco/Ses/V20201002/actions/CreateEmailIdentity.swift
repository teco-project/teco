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

extension Ses {
    /// CreateEmailIdentity请求参数结构体
    public struct CreateEmailIdentityRequest: TCRequestModel {
        /// 您的发信域名，建议使用三级以上域名。例如：mail.qcloud.com。
        public let emailIdentity: String

        public init(emailIdentity: String) {
            self.emailIdentity = emailIdentity
        }

        enum CodingKeys: String, CodingKey {
            case emailIdentity = "EmailIdentity"
        }
    }

    /// CreateEmailIdentity返回参数结构体
    public struct CreateEmailIdentityResponse: TCResponseModel {
        /// 验证类型。固定值：DOMAIN
        public let identityType: String

        /// 是否已通过验证
        public let verifiedForSendingStatus: Bool

        /// 需要配置的DNS信息
        public let attributes: [DNSAttributes]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case identityType = "IdentityType"
            case verifiedForSendingStatus = "VerifiedForSendingStatus"
            case attributes = "Attributes"
            case requestId = "RequestId"
        }
    }

    /// 新建发信域名
    ///
    /// 在使用身份发送电子邮件之前，您需要有一个电子邮件域名，该域名可以是您的网站或者移动应用的域名。您首先必须进行验证，证明自己是该域名的所有者，并且授权给腾讯云SES发送许可，才可以从该域名发送电子邮件。
    @inlinable
    public func createEmailIdentity(_ input: CreateEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmailIdentityResponse> {
        self.client.execute(action: "CreateEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建发信域名
    ///
    /// 在使用身份发送电子邮件之前，您需要有一个电子邮件域名，该域名可以是您的网站或者移动应用的域名。您首先必须进行验证，证明自己是该域名的所有者，并且授权给腾讯云SES发送许可，才可以从该域名发送电子邮件。
    @inlinable
    public func createEmailIdentity(_ input: CreateEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmailIdentityResponse {
        try await self.client.execute(action: "CreateEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建发信域名
    ///
    /// 在使用身份发送电子邮件之前，您需要有一个电子邮件域名，该域名可以是您的网站或者移动应用的域名。您首先必须进行验证，证明自己是该域名的所有者，并且授权给腾讯云SES发送许可，才可以从该域名发送电子邮件。
    @inlinable
    public func createEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmailIdentityResponse> {
        self.createEmailIdentity(CreateEmailIdentityRequest(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }

    /// 新建发信域名
    ///
    /// 在使用身份发送电子邮件之前，您需要有一个电子邮件域名，该域名可以是您的网站或者移动应用的域名。您首先必须进行验证，证明自己是该域名的所有者，并且授权给腾讯云SES发送许可，才可以从该域名发送电子邮件。
    @inlinable
    public func createEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmailIdentityResponse {
        try await self.createEmailIdentity(CreateEmailIdentityRequest(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }
}
