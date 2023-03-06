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

extension Tiia {
    /// DescribeGroups请求参数结构体
    public struct DescribeGroupsRequest: TCPaginatedRequest {
        /// 起始序号，默认值为0。
        public let offset: Int64?

        /// 返回数量，默认值为10，最大值为100。
        public let limit: Int64?

        /// 图库ID，如果不为空，则返回指定库信息。
        public let groupId: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, groupId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case groupId = "GroupId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeGroupsResponse) -> DescribeGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, groupId: self.groupId)
        }
    }

    /// DescribeGroups返回参数结构体
    public struct DescribeGroupsResponse: TCPaginatedResponse {
        /// 图库信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groups: [GroupInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GroupInfo] {
            self.groups ?? []
        }
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroups(offset: Int64? = nil, limit: Int64? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        let input = DescribeGroupsRequest(offset: offset, limit: limit, groupId: groupId)
        return self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroups(offset: Int64? = nil, limit: Int64? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        let input = DescribeGroupsRequest(offset: offset, limit: limit, groupId: groupId)
        return try await self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroupsPaginated(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [GroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGroups, logger: logger, on: eventLoop)
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func describeGroupsPaginated(_ input: DescribeGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeGroupsPaginator(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeGroupsRequest, DescribeGroupsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeGroupsRequest, DescribeGroupsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroups, logger: logger, on: eventLoop)
    }
}
