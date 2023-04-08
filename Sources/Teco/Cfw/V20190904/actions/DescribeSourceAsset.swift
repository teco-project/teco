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

extension Cfw {
    /// DescribeSourceAsset请求参数结构体
    public struct DescribeSourceAssetRequest: TCRequestModel {
        /// 模糊查询
        public let fuzzySearch: String?

        /// 资产类型 1公网 2内网
        public let insType: String?

        /// ChooseType为1，查询已经分组的资产；ChooseType不为1查询没有分组的资产
        public let chooseType: String?

        /// 地域
        public let zone: String?

        /// 查询单页的最大值；eg：10；则最多返回10条结果
        public let limit: Int64?

        /// 查询结果的偏移量
        public let offset: Int64?

        public init(fuzzySearch: String? = nil, insType: String? = nil, chooseType: String? = nil, zone: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.fuzzySearch = fuzzySearch
            self.insType = insType
            self.chooseType = chooseType
            self.zone = zone
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case fuzzySearch = "FuzzySearch"
            case insType = "InsType"
            case chooseType = "ChooseType"
            case zone = "Zone"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeSourceAsset返回参数结构体
    public struct DescribeSourceAssetResponse: TCResponseModel {
        /// 地域集合
        public let zoneList: [AssetZone]

        /// 数据
        public let data: [InstanceInfo]

        /// 返回数据总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneList = "ZoneList"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询资产组全部资产信息
    ///
    /// DescribeSourceAsset-查询资产组全部资产信息
    @inlinable
    public func describeSourceAsset(_ input: DescribeSourceAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSourceAssetResponse> {
        self.client.execute(action: "DescribeSourceAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组全部资产信息
    ///
    /// DescribeSourceAsset-查询资产组全部资产信息
    @inlinable
    public func describeSourceAsset(_ input: DescribeSourceAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceAssetResponse {
        try await self.client.execute(action: "DescribeSourceAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组全部资产信息
    ///
    /// DescribeSourceAsset-查询资产组全部资产信息
    @inlinable
    public func describeSourceAsset(fuzzySearch: String? = nil, insType: String? = nil, chooseType: String? = nil, zone: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSourceAssetResponse> {
        self.describeSourceAsset(.init(fuzzySearch: fuzzySearch, insType: insType, chooseType: chooseType, zone: zone, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产组全部资产信息
    ///
    /// DescribeSourceAsset-查询资产组全部资产信息
    @inlinable
    public func describeSourceAsset(fuzzySearch: String? = nil, insType: String? = nil, chooseType: String? = nil, zone: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceAssetResponse {
        try await self.describeSourceAsset(.init(fuzzySearch: fuzzySearch, insType: insType, chooseType: chooseType, zone: zone, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
