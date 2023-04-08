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

extension Ses {
    /// GetEmailIdentity请求参数结构体
    public struct GetEmailIdentityRequest: TCRequestModel {
        /// 发信域名
        public let emailIdentity: String

        public init(emailIdentity: String) {
            self.emailIdentity = emailIdentity
        }

        enum CodingKeys: String, CodingKey {
            case emailIdentity = "EmailIdentity"
        }
    }

    /// GetEmailIdentity返回参数结构体
    public struct GetEmailIdentityResponse: TCResponseModel {
        /// 验证类型。固定值：DOMAIN
        public let identityType: String

        /// 是否已通过验证
        public let verifiedForSendingStatus: Bool

        /// DNS配置详情
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

    /// 获取域名配置详情
    ///
    /// 获取某个发信域名的配置详情
    @inlinable
    public func getEmailIdentity(_ input: GetEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEmailIdentityResponse> {
        self.client.execute(action: "GetEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名配置详情
    ///
    /// 获取某个发信域名的配置详情
    @inlinable
    public func getEmailIdentity(_ input: GetEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEmailIdentityResponse {
        try await self.client.execute(action: "GetEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名配置详情
    ///
    /// 获取某个发信域名的配置详情
    @inlinable
    public func getEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEmailIdentityResponse> {
        self.getEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名配置详情
    ///
    /// 获取某个发信域名的配置详情
    @inlinable
    public func getEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEmailIdentityResponse {
        try await self.getEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }
}
