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
    /// ModifyCCUrlAllow请求参数结构体
    public struct ModifyCCUrlAllowRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// =add表示添加，=delete表示删除
        public let method: String

        /// 黑/白名单类型；取值[white(白名单)]
        public let type: String

        /// URL数组，URL格式如下：
        /// http://域名/cgi
        /// https://域名/cgi
        public let urlList: [String]

        /// 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写Domain和RuleId字段；
        public let `protocol`: String?

        /// 可选字段，表示HTTPS协议的7层转发规则域名（通过获取7层转发规则接口可以获取域名），只有当Protocol字段为https时才必须填写此字段；
        public let domain: String?

        /// 可选字段，表示HTTPS协议的7层转发规则ID（通过获取7层转发规则接口可以获取规则ID），当添加并且Protocol=https时必须填写；
        /// 当Method为delete时，可以不用填写此字段；
        public let ruleId: String?

        public init(business: String, id: String, method: String, type: String, urlList: [String], protocol: String? = nil, domain: String? = nil, ruleId: String? = nil) {
            self.business = business
            self.id = id
            self.method = method
            self.type = type
            self.urlList = urlList
            self.protocol = `protocol`
            self.domain = domain
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case method = "Method"
            case type = "Type"
            case urlList = "UrlList"
            case `protocol` = "Protocol"
            case domain = "Domain"
            case ruleId = "RuleId"
        }
    }

    /// ModifyCCUrlAllow返回参数结构体
    public struct ModifyCCUrlAllowResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 添加或删除CC的URL白名单
    @inlinable
    public func modifyCCUrlAllow(_ input: ModifyCCUrlAllowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCUrlAllowResponse> {
        self.client.execute(action: "ModifyCCUrlAllow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加或删除CC的URL白名单
    @inlinable
    public func modifyCCUrlAllow(_ input: ModifyCCUrlAllowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCUrlAllowResponse {
        try await self.client.execute(action: "ModifyCCUrlAllow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加或删除CC的URL白名单
    @inlinable
    public func modifyCCUrlAllow(business: String, id: String, method: String, type: String, urlList: [String], protocol: String? = nil, domain: String? = nil, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCUrlAllowResponse> {
        self.modifyCCUrlAllow(.init(business: business, id: id, method: method, type: type, urlList: urlList, protocol: `protocol`, domain: domain, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加或删除CC的URL白名单
    @inlinable
    public func modifyCCUrlAllow(business: String, id: String, method: String, type: String, urlList: [String], protocol: String? = nil, domain: String? = nil, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCUrlAllowResponse {
        try await self.modifyCCUrlAllow(.init(business: business, id: id, method: method, type: type, urlList: urlList, protocol: `protocol`, domain: domain, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
