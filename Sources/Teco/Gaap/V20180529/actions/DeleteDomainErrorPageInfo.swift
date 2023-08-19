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

extension Gaap {
    /// DeleteDomainErrorPageInfo请求参数结构体
    public struct DeleteDomainErrorPageInfoRequest: TCRequest {
        /// 定制错误响应页的唯一ID，请参考CreateDomainErrorPageInfo的响应
        public let errorPageId: String

        public init(errorPageId: String) {
            self.errorPageId = errorPageId
        }

        enum CodingKeys: String, CodingKey {
            case errorPageId = "ErrorPageId"
        }
    }

    /// DeleteDomainErrorPageInfo返回参数结构体
    public struct DeleteDomainErrorPageInfoResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除域名的定制错误
    @inlinable @discardableResult
    public func deleteDomainErrorPageInfo(_ input: DeleteDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainErrorPageInfoResponse> {
        self.client.execute(action: "DeleteDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名的定制错误
    @inlinable @discardableResult
    public func deleteDomainErrorPageInfo(_ input: DeleteDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainErrorPageInfoResponse {
        try await self.client.execute(action: "DeleteDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名的定制错误
    @inlinable @discardableResult
    public func deleteDomainErrorPageInfo(errorPageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainErrorPageInfoResponse> {
        self.deleteDomainErrorPageInfo(.init(errorPageId: errorPageId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除域名的定制错误
    @inlinable @discardableResult
    public func deleteDomainErrorPageInfo(errorPageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainErrorPageInfoResponse {
        try await self.deleteDomainErrorPageInfo(.init(errorPageId: errorPageId), region: region, logger: logger, on: eventLoop)
    }
}
