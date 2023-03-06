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

import TecoPaginationHelpers

extension Cfg {
    /// DescribeTemplateList请求参数结构体
    public struct DescribeTemplateListRequest: TCPaginatedRequest {
        /// 分页Limit, 最大值100
        public let limit: Int64

        /// 分页Offset
        public let offset: Int64

        /// 演练名称
        public let title: String?

        /// 标签键
        public let tag: [String]?

        /// 状态，1---使用中， 2---停用
        public let isUsed: Int64?

        /// 标签对
        public let tags: [TagWithDescribe]?

        public init(limit: Int64, offset: Int64, title: String? = nil, tag: [String]? = nil, isUsed: Int64? = nil, tags: [TagWithDescribe]? = nil) {
            self.limit = limit
            self.offset = offset
            self.title = title
            self.tag = tag
            self.isUsed = isUsed
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case title = "Title"
            case tag = "Tag"
            case isUsed = "IsUsed"
            case tags = "Tags"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTemplateListResponse) -> DescribeTemplateListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTemplateListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), title: self.title, tag: self.tag, isUsed: self.isUsed, tags: self.tags)
        }
    }

    /// DescribeTemplateList返回参数结构体
    public struct DescribeTemplateListResponse: TCPaginatedResponse {
        /// 经验库列表
        public let templateList: [TemplateListItem]

        /// 列表数量
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateList = "TemplateList"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TemplateListItem] {
            self.templateList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询经验库列表
    @inlinable
    public func describeTemplateList(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateListResponse> {
        self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询经验库列表
    @inlinable
    public func describeTemplateList(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateListResponse {
        try await self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询经验库列表
    @inlinable
    public func describeTemplateList(limit: Int64, offset: Int64, title: String? = nil, tag: [String]? = nil, isUsed: Int64? = nil, tags: [TagWithDescribe]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateListResponse> {
        let input = DescribeTemplateListRequest(limit: limit, offset: offset, title: title, tag: tag, isUsed: isUsed, tags: tags)
        return self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询经验库列表
    @inlinable
    public func describeTemplateList(limit: Int64, offset: Int64, title: String? = nil, tag: [String]? = nil, isUsed: Int64? = nil, tags: [TagWithDescribe]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateListResponse {
        let input = DescribeTemplateListRequest(limit: limit, offset: offset, title: title, tag: tag, isUsed: isUsed, tags: tags)
        return try await self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
