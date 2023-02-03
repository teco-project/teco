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

extension Tcss {
    /// DescribeSearchTemplates请求参数结构体
    public struct DescribeSearchTemplatesRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSearchTemplates返回参数结构体
    public struct DescribeSearchTemplatesResponse: TCResponseModel {
        /// 总数
        public let totalCount: UInt64

        /// 模板列表
        public let list: [SearchTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchTemplatesResponse> {
        self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchTemplatesResponse {
        try await self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchTemplatesResponse> {
        let input = DescribeSearchTemplatesRequest(offset: offset, limit: limit)
        return self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchTemplatesResponse {
        let input = DescribeSearchTemplatesRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
