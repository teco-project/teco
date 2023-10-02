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
    /// DeleteAntiFakeUrl请求参数结构体
    public struct DeleteAntiFakeUrlRequest: TCRequest {
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

    /// DeleteAntiFakeUrl返回参数结构体
    public struct DeleteAntiFakeUrlResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除防篡改url
    @inlinable @discardableResult
    public func deleteAntiFakeUrl(_ input: DeleteAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAntiFakeUrlResponse> {
        self.client.execute(action: "DeleteAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除防篡改url
    @inlinable @discardableResult
    public func deleteAntiFakeUrl(_ input: DeleteAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAntiFakeUrlResponse {
        try await self.client.execute(action: "DeleteAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除防篡改url
    @inlinable @discardableResult
    public func deleteAntiFakeUrl(domain: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAntiFakeUrlResponse> {
        self.deleteAntiFakeUrl(.init(domain: domain, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除防篡改url
    @inlinable @discardableResult
    public func deleteAntiFakeUrl(domain: String, id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAntiFakeUrlResponse {
        try await self.deleteAntiFakeUrl(.init(domain: domain, id: id), region: region, logger: logger, on: eventLoop)
    }
}
