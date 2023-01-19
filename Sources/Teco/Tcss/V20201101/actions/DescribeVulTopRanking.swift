//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeVulTopRanking请求参数结构体
    public struct DescribeVulTopRankingRequest: TCRequestModel {
        /// 漏洞分类: SYSTEM:系统漏洞 WEB:web应用漏洞 EMERGENCY:应急漏洞
        public let categoryType: String

        public init(categoryType: String) {
            self.categoryType = categoryType
        }

        enum CodingKeys: String, CodingKey {
            case categoryType = "CategoryType"
        }
    }

    /// DescribeVulTopRanking返回参数结构体
    public struct DescribeVulTopRankingResponse: TCResponseModel {
        /// 漏洞Top排名信息列表
        public let list: [VulTopRankingInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞Top排名列表
    @inlinable
    public func describeVulTopRanking(_ input: DescribeVulTopRankingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulTopRankingResponse> {
        self.client.execute(action: "DescribeVulTopRanking", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞Top排名列表
    @inlinable
    public func describeVulTopRanking(_ input: DescribeVulTopRankingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulTopRankingResponse {
        try await self.client.execute(action: "DescribeVulTopRanking", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞Top排名列表
    @inlinable
    public func describeVulTopRanking(categoryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulTopRankingResponse> {
        self.describeVulTopRanking(DescribeVulTopRankingRequest(categoryType: categoryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞Top排名列表
    @inlinable
    public func describeVulTopRanking(categoryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulTopRankingResponse {
        try await self.describeVulTopRanking(DescribeVulTopRankingRequest(categoryType: categoryType), region: region, logger: logger, on: eventLoop)
    }
}
