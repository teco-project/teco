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

extension Live {
    /// AuthenticateDomainOwner请求参数结构体
    public struct AuthenticateDomainOwnerRequest: TCRequest {
        /// 要验证的域名。
        public let domainName: String

        /// 验证类型。可取值：
        /// dnsCheck ：立即验证配置 dns 的解析记录是否与待验证内容一致，成功则保存记录。
        /// fileCheck ：立即验证 web 文件是否与待验证内容一致，成功则保存记录。
        /// dbCheck :  检查是否已经验证成功过。
        public let verifyType: String

        public init(domainName: String, verifyType: String) {
            self.domainName = domainName
            self.verifyType = verifyType
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case verifyType = "VerifyType"
        }
    }

    /// AuthenticateDomainOwner返回参数结构体
    public struct AuthenticateDomainOwnerResponse: TCResponse {
        /// 验证内容。
        /// VerifyType 传 dnsCheck 时，为要配的 TXT 记录值。
        /// VerifyType 传 fileCheck 时，为文件内容。
        public let content: String

        /// 域名验证状态。
        /// >=0 为已验证归属。
        /// <0 未验证归属权。
        public let status: Int64

        /// DomainName 对应的主域名。
        /// 同一主域名下的所有域名只需成功验证一次，后续均无需再验证。
        public let mainDomain: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case status = "Status"
            case mainDomain = "MainDomain"
            case requestId = "RequestId"
        }
    }

    /// 验证直播域名所有权
    ///
    /// 验证用户是否拥有特定直播域名。
    @inlinable
    public func authenticateDomainOwner(_ input: AuthenticateDomainOwnerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthenticateDomainOwnerResponse> {
        self.client.execute(action: "AuthenticateDomainOwner", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证直播域名所有权
    ///
    /// 验证用户是否拥有特定直播域名。
    @inlinable
    public func authenticateDomainOwner(_ input: AuthenticateDomainOwnerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuthenticateDomainOwnerResponse {
        try await self.client.execute(action: "AuthenticateDomainOwner", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证直播域名所有权
    ///
    /// 验证用户是否拥有特定直播域名。
    @inlinable
    public func authenticateDomainOwner(domainName: String, verifyType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthenticateDomainOwnerResponse> {
        self.authenticateDomainOwner(.init(domainName: domainName, verifyType: verifyType), region: region, logger: logger, on: eventLoop)
    }

    /// 验证直播域名所有权
    ///
    /// 验证用户是否拥有特定直播域名。
    @inlinable
    public func authenticateDomainOwner(domainName: String, verifyType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuthenticateDomainOwnerResponse {
        try await self.authenticateDomainOwner(.init(domainName: domainName, verifyType: verifyType), region: region, logger: logger, on: eventLoop)
    }
}
