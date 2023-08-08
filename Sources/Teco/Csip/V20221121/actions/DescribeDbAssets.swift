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
    /// DescribeDbAssets请求参数结构体
    public struct DescribeDbAssetsRequest: TCRequestModel {
        /// -
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeDbAssets返回参数结构体
    public struct DescribeDbAssetsResponse: TCResponseModel {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 资产总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DBAssetVO]?

        /// 地域枚举
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionList: [FilterDataObject]?

        /// 资产类型枚举
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assetTypeList: [FilterDataObject]?

        /// Vpc枚举
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcList: [FilterDataObject]?

        /// Appid枚举
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appIdList: [FilterDataObject]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case regionList = "RegionList"
            case assetTypeList = "AssetTypeList"
            case vpcList = "VpcList"
            case appIdList = "AppIdList"
            case requestId = "RequestId"
        }
    }

    /// 资产列表
    @inlinable
    public func describeDbAssets(_ input: DescribeDbAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbAssetsResponse> {
        self.client.execute(action: "DescribeDbAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 资产列表
    @inlinable
    public func describeDbAssets(_ input: DescribeDbAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbAssetsResponse {
        try await self.client.execute(action: "DescribeDbAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 资产列表
    @inlinable
    public func describeDbAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbAssetsResponse> {
        self.describeDbAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 资产列表
    @inlinable
    public func describeDbAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbAssetsResponse {
        try await self.describeDbAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
