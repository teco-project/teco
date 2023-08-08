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
    /// DescribeDomainAssets请求参数结构体
    public struct DescribeDomainAssetsRequest: TCRequestModel {
        /// -
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeDomainAssets返回参数结构体
    public struct DescribeDomainAssetsResponse: TCResponseModel {
        /// -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DomainAssetVO]?

        /// 防护状态列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defenseStatusList: [FilterDataObject]?

        /// 资产归属地列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assetLocationList: [FilterDataObject]?

        /// 资产类型列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceTypeList: [FilterDataObject]?

        /// 地域列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionList: [FilterDataObject]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case defenseStatusList = "DefenseStatusList"
            case assetLocationList = "AssetLocationList"
            case sourceTypeList = "SourceTypeList"
            case regionList = "RegionList"
            case requestId = "RequestId"
        }
    }

    /// 域名列表
    @inlinable
    public func describeDomainAssets(_ input: DescribeDomainAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainAssetsResponse> {
        self.client.execute(action: "DescribeDomainAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名列表
    @inlinable
    public func describeDomainAssets(_ input: DescribeDomainAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainAssetsResponse {
        try await self.client.execute(action: "DescribeDomainAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名列表
    @inlinable
    public func describeDomainAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainAssetsResponse> {
        self.describeDomainAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 域名列表
    @inlinable
    public func describeDomainAssets(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainAssetsResponse {
        try await self.describeDomainAssets(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
