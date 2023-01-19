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

extension Cwp {
    /// DescribeVulLevelCount请求参数结构体
    public struct DescribeVulLevelCountRequest: TCRequestModel {
        /// 1:web-cms 漏洞，2.应用漏洞 3:安全基线 4: Linux软件漏洞 5: windows系统漏洞 6:应急漏洞，不填或者填0时返回 1，2，4，5 的总统计数据
        public let vulCategory: UInt64?

        /// 是否仅统计重点关注漏洞 1=仅统计重点关注漏洞, 0=统计全部漏洞
        public let isFollowVul: UInt64?

        public init(vulCategory: UInt64? = nil, isFollowVul: UInt64? = nil) {
            self.vulCategory = vulCategory
            self.isFollowVul = isFollowVul
        }

        enum CodingKeys: String, CodingKey {
            case vulCategory = "VulCategory"
            case isFollowVul = "IsFollowVul"
        }
    }

    /// DescribeVulLevelCount返回参数结构体
    public struct DescribeVulLevelCountResponse: TCResponseModel {
        /// 统计结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulLevelList: [VulLevelInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulLevelList = "VulLevelList"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞数量等级分布统计
    ///
    /// 漏洞数量等级分布统计
    @inlinable
    public func describeVulLevelCount(_ input: DescribeVulLevelCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelCountResponse> {
        self.client.execute(action: "DescribeVulLevelCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞数量等级分布统计
    ///
    /// 漏洞数量等级分布统计
    @inlinable
    public func describeVulLevelCount(_ input: DescribeVulLevelCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelCountResponse {
        try await self.client.execute(action: "DescribeVulLevelCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞数量等级分布统计
    ///
    /// 漏洞数量等级分布统计
    @inlinable
    public func describeVulLevelCount(vulCategory: UInt64? = nil, isFollowVul: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelCountResponse> {
        self.describeVulLevelCount(DescribeVulLevelCountRequest(vulCategory: vulCategory, isFollowVul: isFollowVul), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞数量等级分布统计
    ///
    /// 漏洞数量等级分布统计
    @inlinable
    public func describeVulLevelCount(vulCategory: UInt64? = nil, isFollowVul: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelCountResponse {
        try await self.describeVulLevelCount(DescribeVulLevelCountRequest(vulCategory: vulCategory, isFollowVul: isFollowVul), region: region, logger: logger, on: eventLoop)
    }
}
