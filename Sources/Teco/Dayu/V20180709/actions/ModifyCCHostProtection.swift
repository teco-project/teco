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

extension Dayu {
    /// ModifyCCHostProtection请求参数结构体
    public struct ModifyCCHostProtectionRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则ID
        public let ruleId: String

        /// 开启/关闭CC域名防护，取值[open(表示开启)，close(表示关闭)]
        public let method: String

        public init(business: String, id: String, ruleId: String, method: String) {
            self.business = business
            self.id = id
            self.ruleId = ruleId
            self.method = method
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleId = "RuleId"
            case method = "Method"
        }
    }

    /// ModifyCCHostProtection返回参数结构体
    public struct ModifyCCHostProtectionResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 开启或关闭CC域名防护
    @inlinable
    public func modifyCCHostProtection(_ input: ModifyCCHostProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCHostProtectionResponse> {
        self.client.execute(action: "ModifyCCHostProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或关闭CC域名防护
    @inlinable
    public func modifyCCHostProtection(_ input: ModifyCCHostProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCHostProtectionResponse {
        try await self.client.execute(action: "ModifyCCHostProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启或关闭CC域名防护
    @inlinable
    public func modifyCCHostProtection(business: String, id: String, ruleId: String, method: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCHostProtectionResponse> {
        self.modifyCCHostProtection(.init(business: business, id: id, ruleId: ruleId, method: method), region: region, logger: logger, on: eventLoop)
    }

    /// 开启或关闭CC域名防护
    @inlinable
    public func modifyCCHostProtection(business: String, id: String, ruleId: String, method: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCHostProtectionResponse {
        try await self.modifyCCHostProtection(.init(business: business, id: id, ruleId: ruleId, method: method), region: region, logger: logger, on: eventLoop)
    }
}
