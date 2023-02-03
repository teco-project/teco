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

extension Ses {
    /// CreateEmailAddress请求参数结构体
    public struct CreateEmailAddressRequest: TCRequestModel {
        /// 您的发信地址（发信地址总数上限为10个）
        public let emailAddress: String

        /// 发件人别名
        public let emailSenderName: String?

        public init(emailAddress: String, emailSenderName: String? = nil) {
            self.emailAddress = emailAddress
            self.emailSenderName = emailSenderName
        }

        enum CodingKeys: String, CodingKey {
            case emailAddress = "EmailAddress"
            case emailSenderName = "EmailSenderName"
        }
    }

    /// CreateEmailAddress返回参数结构体
    public struct CreateEmailAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新建发信地址
    ///
    /// 在验证了发信域名之后，您需要一个发信地址来发送邮件。例如发信域名是mail.qcloud.com，那么发信地址可以为 service@mail.qcloud.com。如果您想要收件人在收件箱列表中显示您的别名，例如"腾讯云邮件通知"。那么发信地址为： 别名 空格 尖括号 邮箱地址。请注意中间需要有空格
    @inlinable @discardableResult
    public func createEmailAddress(_ input: CreateEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmailAddressResponse> {
        self.client.execute(action: "CreateEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建发信地址
    ///
    /// 在验证了发信域名之后，您需要一个发信地址来发送邮件。例如发信域名是mail.qcloud.com，那么发信地址可以为 service@mail.qcloud.com。如果您想要收件人在收件箱列表中显示您的别名，例如"腾讯云邮件通知"。那么发信地址为： 别名 空格 尖括号 邮箱地址。请注意中间需要有空格
    @inlinable @discardableResult
    public func createEmailAddress(_ input: CreateEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmailAddressResponse {
        try await self.client.execute(action: "CreateEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建发信地址
    ///
    /// 在验证了发信域名之后，您需要一个发信地址来发送邮件。例如发信域名是mail.qcloud.com，那么发信地址可以为 service@mail.qcloud.com。如果您想要收件人在收件箱列表中显示您的别名，例如"腾讯云邮件通知"。那么发信地址为： 别名 空格 尖括号 邮箱地址。请注意中间需要有空格
    @inlinable @discardableResult
    public func createEmailAddress(emailAddress: String, emailSenderName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmailAddressResponse> {
        let input = CreateEmailAddressRequest(emailAddress: emailAddress, emailSenderName: emailSenderName)
        return self.client.execute(action: "CreateEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建发信地址
    ///
    /// 在验证了发信域名之后，您需要一个发信地址来发送邮件。例如发信域名是mail.qcloud.com，那么发信地址可以为 service@mail.qcloud.com。如果您想要收件人在收件箱列表中显示您的别名，例如"腾讯云邮件通知"。那么发信地址为： 别名 空格 尖括号 邮箱地址。请注意中间需要有空格
    @inlinable @discardableResult
    public func createEmailAddress(emailAddress: String, emailSenderName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmailAddressResponse {
        let input = CreateEmailAddressRequest(emailAddress: emailAddress, emailSenderName: emailSenderName)
        return try await self.client.execute(action: "CreateEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
