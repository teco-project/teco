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
    /// ModifyCCLevel请求参数结构体
    public struct ModifyCCLevelRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// CC防护等级，取值[default(正常), loose(宽松), strict(严格)];
        public let level: String

        /// 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写RuleId字段；
        public let `protocol`: String

        /// 表示7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；
        public let ruleId: String

        public init(business: String, id: String, level: String, protocol: String, ruleId: String) {
            self.business = business
            self.id = id
            self.level = level
            self.protocol = `protocol`
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case level = "Level"
            case `protocol` = "Protocol"
            case ruleId = "RuleId"
        }
    }

    /// ModifyCCLevel返回参数结构体
    public struct ModifyCCLevelResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改CC防护等级
    @inlinable
    public func modifyCCLevel(_ input: ModifyCCLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCLevelResponse> {
        self.client.execute(action: "ModifyCCLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC防护等级
    @inlinable
    public func modifyCCLevel(_ input: ModifyCCLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCLevelResponse {
        try await self.client.execute(action: "ModifyCCLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC防护等级
    @inlinable
    public func modifyCCLevel(business: String, id: String, level: String, protocol: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCLevelResponse> {
        self.modifyCCLevel(.init(business: business, id: id, level: level, protocol: `protocol`, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC防护等级
    @inlinable
    public func modifyCCLevel(business: String, id: String, level: String, protocol: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCLevelResponse {
        try await self.modifyCCLevel(.init(business: business, id: id, level: level, protocol: `protocol`, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
