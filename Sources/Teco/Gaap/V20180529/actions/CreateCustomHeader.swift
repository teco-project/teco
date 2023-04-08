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

extension Gaap {
    /// CreateCustomHeader请求参数结构体
    public struct CreateCustomHeaderRequest: TCRequestModel {
        /// 规则id
        public let ruleId: String

        /// 新增的header名称和内容列表， ‘’$remote_addr‘’会被解析替换成客户端ip，其他值原样透传到源站。
        public let headers: [HttpHeaderParam]?

        public init(ruleId: String, headers: [HttpHeaderParam]? = nil) {
            self.ruleId = ruleId
            self.headers = headers
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case headers = "Headers"
        }
    }

    /// CreateCustomHeader返回参数结构体
    public struct CreateCustomHeaderResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建自定义header
    ///
    /// 本接口（CreateCustomHeader）用于创建HTTP/HTTPS监听器的自定义header，客户端请求通过访问该监听器时，会将监听器中配置的header信息发送到源站。
    @inlinable @discardableResult
    public func createCustomHeader(_ input: CreateCustomHeaderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomHeaderResponse> {
        self.client.execute(action: "CreateCustomHeader", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义header
    ///
    /// 本接口（CreateCustomHeader）用于创建HTTP/HTTPS监听器的自定义header，客户端请求通过访问该监听器时，会将监听器中配置的header信息发送到源站。
    @inlinable @discardableResult
    public func createCustomHeader(_ input: CreateCustomHeaderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomHeaderResponse {
        try await self.client.execute(action: "CreateCustomHeader", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义header
    ///
    /// 本接口（CreateCustomHeader）用于创建HTTP/HTTPS监听器的自定义header，客户端请求通过访问该监听器时，会将监听器中配置的header信息发送到源站。
    @inlinable @discardableResult
    public func createCustomHeader(ruleId: String, headers: [HttpHeaderParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomHeaderResponse> {
        self.createCustomHeader(.init(ruleId: ruleId, headers: headers), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自定义header
    ///
    /// 本接口（CreateCustomHeader）用于创建HTTP/HTTPS监听器的自定义header，客户端请求通过访问该监听器时，会将监听器中配置的header信息发送到源站。
    @inlinable @discardableResult
    public func createCustomHeader(ruleId: String, headers: [HttpHeaderParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomHeaderResponse {
        try await self.createCustomHeader(.init(ruleId: ruleId, headers: headers), region: region, logger: logger, on: eventLoop)
    }
}
