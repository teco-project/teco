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

extension Antiddos {
    /// CreateL7RuleCerts请求参数结构体
    public struct CreateL7RuleCertsRequest: TCRequest {
        /// SSL证书ID
        public let certId: String

        /// L7域名转发规则列表
        public let l7Rules: [InsL7Rules]

        public init(certId: String, l7Rules: [InsL7Rules]) {
            self.certId = certId
            self.l7Rules = l7Rules
        }

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
            case l7Rules = "L7Rules"
        }
    }

    /// CreateL7RuleCerts返回参数结构体
    public struct CreateL7RuleCertsResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 批量配置L7转发规则的证书
    ///
    /// 批量配置L7转发规则的证书供SSL测调用
    @inlinable
    public func createL7RuleCerts(_ input: CreateL7RuleCertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7RuleCertsResponse> {
        self.client.execute(action: "CreateL7RuleCerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量配置L7转发规则的证书
    ///
    /// 批量配置L7转发规则的证书供SSL测调用
    @inlinable
    public func createL7RuleCerts(_ input: CreateL7RuleCertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RuleCertsResponse {
        try await self.client.execute(action: "CreateL7RuleCerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量配置L7转发规则的证书
    ///
    /// 批量配置L7转发规则的证书供SSL测调用
    @inlinable
    public func createL7RuleCerts(certId: String, l7Rules: [InsL7Rules], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7RuleCertsResponse> {
        self.createL7RuleCerts(.init(certId: certId, l7Rules: l7Rules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量配置L7转发规则的证书
    ///
    /// 批量配置L7转发规则的证书供SSL测调用
    @inlinable
    public func createL7RuleCerts(certId: String, l7Rules: [InsL7Rules], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RuleCertsResponse {
        try await self.createL7RuleCerts(.init(certId: certId, l7Rules: l7Rules), region: region, logger: logger, on: eventLoop)
    }
}
