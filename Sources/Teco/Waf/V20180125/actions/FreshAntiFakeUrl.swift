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

extension Waf {
    /// FreshAntiFakeUrl请求参数结构体
    public struct FreshAntiFakeUrlRequest: TCRequest {
        /// 域名
        public let domain: String

        /// Id
        public let id: UInt64

        public init(domain: String, id: UInt64) {
            self.domain = domain
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case id = "Id"
        }
    }

    /// FreshAntiFakeUrl返回参数结构体
    public struct FreshAntiFakeUrlResponse: TCResponse {
        /// 结果成功与否
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 刷新防篡改url
    @inlinable
    public func freshAntiFakeUrl(_ input: FreshAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FreshAntiFakeUrlResponse> {
        self.client.execute(action: "FreshAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新防篡改url
    @inlinable
    public func freshAntiFakeUrl(_ input: FreshAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FreshAntiFakeUrlResponse {
        try await self.client.execute(action: "FreshAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新防篡改url
    @inlinable
    public func freshAntiFakeUrl(domain: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FreshAntiFakeUrlResponse> {
        self.freshAntiFakeUrl(.init(domain: domain, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新防篡改url
    @inlinable
    public func freshAntiFakeUrl(domain: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FreshAntiFakeUrlResponse {
        try await self.freshAntiFakeUrl(.init(domain: domain, id: id), region: region, logger: logger, on: eventLoop)
    }
}
