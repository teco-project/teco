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
    /// DescribeAntiFakeUrl请求参数结构体
    public struct DescribeAntiFakeUrlRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 翻页参数
        public let pageInfo: PageInfo

        public init(domain: String, pageInfo: PageInfo) {
            self.domain = domain
            self.pageInfo = pageInfo
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case pageInfo = "PageInfo"
        }
    }

    /// DescribeAntiFakeUrl返回参数结构体
    public struct DescribeAntiFakeUrlResponse: TCResponse {
        /// 总数
        public let total: String

        /// 信息
        public let list: [CacheUrlItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeUrl(_ input: DescribeAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAntiFakeUrlResponse> {
        self.client.execute(action: "DescribeAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeUrl(_ input: DescribeAntiFakeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAntiFakeUrlResponse {
        try await self.client.execute(action: "DescribeAntiFakeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeUrl(domain: String, pageInfo: PageInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAntiFakeUrlResponse> {
        self.describeAntiFakeUrl(.init(domain: domain, pageInfo: pageInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeUrl(domain: String, pageInfo: PageInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAntiFakeUrlResponse {
        try await self.describeAntiFakeUrl(.init(domain: domain, pageInfo: pageInfo), region: region, logger: logger, on: eventLoop)
    }
}
