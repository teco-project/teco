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

extension Csip {
    /// DescribeSubnetAssets请求参数结构体
    public struct DescribeSubnetAssetsRequest: TCRequestModel {
        /// 过滤参数
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeSubnetAssets返回参数结构体
    public struct DescribeSubnetAssetsResponse: TCResponseModel {
        /// 列表
        public let data: [SubnetAsset]

        /// 总数
        public let totalCount: Int64

        /// 地域列表
        public let regionList: [FilterDataObject]

        /// vpc列表
        public let vpcList: [FilterDataObject]

        /// appid列表
        public let appIdList: [FilterDataObject]

        /// 可用区列表
        public let zoneList: [FilterDataObject]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case regionList = "RegionList"
            case vpcList = "VpcList"
            case appIdList = "AppIdList"
            case zoneList = "ZoneList"
            case requestId = "RequestId"
        }
    }

    /// 子网列表
    ///
    /// 获取子网列表
    @inlinable
    public func describeSubnetAssets(_ input: DescribeSubnetAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetAssetsResponse> {
        self.client.execute(action: "DescribeSubnetAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 子网列表
    ///
    /// 获取子网列表
    @inlinable
    public func describeSubnetAssets(_ input: DescribeSubnetAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetAssetsResponse {
        try await self.client.execute(action: "DescribeSubnetAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 子网列表
    ///
    /// 获取子网列表
    @inlinable
    public func describeSubnetAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetAssetsResponse> {
        self.describeSubnetAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 子网列表
    ///
    /// 获取子网列表
    @inlinable
    public func describeSubnetAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetAssetsResponse {
        try await self.describeSubnetAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
