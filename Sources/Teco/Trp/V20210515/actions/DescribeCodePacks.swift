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

extension Trp {
    /// DescribeCodePacks请求参数结构体
    public struct DescribeCodePacksRequest: TCRequestModel {
        /// 每页数量
        public let pageSize: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 查询关键字
        public let keyword: String?

        /// 企业ID
        public let corpId: UInt64?

        public init(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.keyword = keyword
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case keyword = "Keyword"
            case corpId = "CorpId"
        }
    }

    /// DescribeCodePacks返回参数结构体
    public struct DescribeCodePacksResponse: TCResponseModel {
        /// 码列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codePacks: [CodePack]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codePacks = "CodePacks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePacksResponse> {
        self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePacksResponse {
        try await self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePacksResponse> {
        self.describeCodePacks(DescribeCodePacksRequest(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePacksResponse {
        try await self.describeCodePacks(DescribeCodePacksRequest(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
