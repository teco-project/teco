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

extension Cdn {
    /// DeleteScdnDomain请求参数结构体
    public struct DeleteScdnDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// DeleteScdnDomain返回参数结构体
    public struct DeleteScdnDomainResponse: TCResponseModel {
        /// 创建结果，Success表示成功
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除SCDN域名
    @inlinable
    public func deleteScdnDomain(_ input: DeleteScdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScdnDomainResponse> {
        self.client.execute(action: "DeleteScdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除SCDN域名
    @inlinable
    public func deleteScdnDomain(_ input: DeleteScdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScdnDomainResponse {
        try await self.client.execute(action: "DeleteScdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除SCDN域名
    @inlinable
    public func deleteScdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScdnDomainResponse> {
        self.deleteScdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 删除SCDN域名
    @inlinable
    public func deleteScdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScdnDomainResponse {
        try await self.deleteScdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
