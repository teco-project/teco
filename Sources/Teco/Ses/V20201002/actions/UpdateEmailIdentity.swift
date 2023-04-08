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

import TecoCore

extension Ses {
    /// UpdateEmailIdentity请求参数结构体
    public struct UpdateEmailIdentityRequest: TCRequestModel {
        /// 请求验证的域名
        public let emailIdentity: String

        public init(emailIdentity: String) {
            self.emailIdentity = emailIdentity
        }

        enum CodingKeys: String, CodingKey {
            case emailIdentity = "EmailIdentity"
        }
    }

    /// UpdateEmailIdentity返回参数结构体
    public struct UpdateEmailIdentityResponse: TCResponseModel {
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

    /// 请求验证
    ///
    /// 您已经成功配置好了您的DNS，接下来请求腾讯云验证您的DNS配置是否正确
    @inlinable
    public func updateEmailIdentity(_ input: UpdateEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmailIdentityResponse> {
        self.client.execute(action: "UpdateEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 请求验证
    ///
    /// 您已经成功配置好了您的DNS，接下来请求腾讯云验证您的DNS配置是否正确
    @inlinable
    public func updateEmailIdentity(_ input: UpdateEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEmailIdentityResponse {
        try await self.client.execute(action: "UpdateEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 请求验证
    ///
    /// 您已经成功配置好了您的DNS，接下来请求腾讯云验证您的DNS配置是否正确
    @inlinable
    public func updateEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmailIdentityResponse> {
        self.updateEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }

    /// 请求验证
    ///
    /// 您已经成功配置好了您的DNS，接下来请求腾讯云验证您的DNS配置是否正确
    @inlinable
    public func updateEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEmailIdentityResponse {
        try await self.updateEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }
}
