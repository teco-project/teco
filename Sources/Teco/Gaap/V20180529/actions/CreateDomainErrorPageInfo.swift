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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gaap {
    /// CreateDomainErrorPageInfo请求参数结构体
    public struct CreateDomainErrorPageInfoRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        /// 域名
        public let domain: String

        /// 原始错误码
        public let errorNos: [Int64]

        /// 新的响应包体
        public let body: String

        /// 新错误码
        public let newErrorNo: Int64?

        /// 需要删除的响应头
        public let clearHeaders: [String]?

        /// 需要设置的响应头
        public let setHeaders: [HttpHeaderParam]?

        public init(listenerId: String, domain: String, errorNos: [Int64], body: String, newErrorNo: Int64? = nil, clearHeaders: [String]? = nil, setHeaders: [HttpHeaderParam]? = nil) {
            self.listenerId = listenerId
            self.domain = domain
            self.errorNos = errorNos
            self.body = body
            self.newErrorNo = newErrorNo
            self.clearHeaders = clearHeaders
            self.setHeaders = setHeaders
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case domain = "Domain"
            case errorNos = "ErrorNos"
            case body = "Body"
            case newErrorNo = "NewErrorNo"
            case clearHeaders = "ClearHeaders"
            case setHeaders = "SetHeaders"
        }
    }

    /// CreateDomainErrorPageInfo返回参数结构体
    public struct CreateDomainErrorPageInfoResponse: TCResponseModel {
        /// 错误定制响应的配置ID
        public let errorPageId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorPageId = "ErrorPageId"
            case requestId = "RequestId"
        }
    }

    /// 定制域名指定错误码的错误响应
    @inlinable
    public func createDomainErrorPageInfo(_ input: CreateDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainErrorPageInfoResponse> {
        self.client.execute(action: "CreateDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 定制域名指定错误码的错误响应
    @inlinable
    public func createDomainErrorPageInfo(_ input: CreateDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainErrorPageInfoResponse {
        try await self.client.execute(action: "CreateDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 定制域名指定错误码的错误响应
    @inlinable
    public func createDomainErrorPageInfo(listenerId: String, domain: String, errorNos: [Int64], body: String, newErrorNo: Int64? = nil, clearHeaders: [String]? = nil, setHeaders: [HttpHeaderParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainErrorPageInfoResponse> {
        self.createDomainErrorPageInfo(.init(listenerId: listenerId, domain: domain, errorNos: errorNos, body: body, newErrorNo: newErrorNo, clearHeaders: clearHeaders, setHeaders: setHeaders), region: region, logger: logger, on: eventLoop)
    }

    /// 定制域名指定错误码的错误响应
    @inlinable
    public func createDomainErrorPageInfo(listenerId: String, domain: String, errorNos: [Int64], body: String, newErrorNo: Int64? = nil, clearHeaders: [String]? = nil, setHeaders: [HttpHeaderParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainErrorPageInfoResponse {
        try await self.createDomainErrorPageInfo(.init(listenerId: listenerId, domain: domain, errorNos: errorNos, body: body, newErrorNo: newErrorNo, clearHeaders: clearHeaders, setHeaders: setHeaders), region: region, logger: logger, on: eventLoop)
    }
}
