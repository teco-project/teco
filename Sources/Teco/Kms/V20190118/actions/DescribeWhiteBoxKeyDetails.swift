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

extension Kms {
    /// DescribeWhiteBoxKeyDetails请求参数结构体
    public struct DescribeWhiteBoxKeyDetailsRequest: TCPaginatedRequest {
        /// 过滤条件：密钥的状态，0：disabled，1：enabled
        public let keyStatus: Int64?

        /// 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        public let offset: UInt64?

        /// 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为0, 表示不分页
        public let limit: UInt64?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        public init(keyStatus: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil) {
            self.keyStatus = keyStatus
            self.offset = offset
            self.limit = limit
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case keyStatus = "KeyStatus"
            case offset = "Offset"
            case limit = "Limit"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWhiteBoxKeyDetailsResponse) -> DescribeWhiteBoxKeyDetailsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWhiteBoxKeyDetailsRequest(keyStatus: self.keyStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagFilters: self.tagFilters)
        }
    }

    /// DescribeWhiteBoxKeyDetails返回参数结构体
    public struct DescribeWhiteBoxKeyDetailsResponse: TCPaginatedResponse {
        /// 白盒密钥信息列表。
        public let keyInfos: [WhiteboxKeyInfo]

        /// 白盒密钥总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyInfos = "KeyInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WhiteboxKeyInfo] {
            self.keyInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetails(_ input: DescribeWhiteBoxKeyDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxKeyDetailsResponse> {
        self.client.execute(action: "DescribeWhiteBoxKeyDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetails(_ input: DescribeWhiteBoxKeyDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxKeyDetailsResponse {
        try await self.client.execute(action: "DescribeWhiteBoxKeyDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetails(keyStatus: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxKeyDetailsResponse> {
        let input = DescribeWhiteBoxKeyDetailsRequest(keyStatus: keyStatus, offset: offset, limit: limit, tagFilters: tagFilters)
        return self.client.execute(action: "DescribeWhiteBoxKeyDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetails(keyStatus: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxKeyDetailsResponse {
        let input = DescribeWhiteBoxKeyDetailsRequest(keyStatus: keyStatus, offset: offset, limit: limit, tagFilters: tagFilters)
        return try await self.client.execute(action: "DescribeWhiteBoxKeyDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetailsPaginated(_ input: DescribeWhiteBoxKeyDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WhiteboxKeyInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeWhiteBoxKeyDetails, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥列表
    @inlinable @discardableResult
    public func describeWhiteBoxKeyDetailsPaginated(_ input: DescribeWhiteBoxKeyDetailsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWhiteBoxKeyDetailsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWhiteBoxKeyDetails, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥列表
    @inlinable
    public func describeWhiteBoxKeyDetailsPaginator(_ input: DescribeWhiteBoxKeyDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeWhiteBoxKeyDetailsRequest, DescribeWhiteBoxKeyDetailsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeWhiteBoxKeyDetailsRequest, DescribeWhiteBoxKeyDetailsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWhiteBoxKeyDetails, logger: logger, on: eventLoop)
    }
}
