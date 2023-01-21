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

extension Cdc {
    /// DescribeSites请求参数结构体
    public struct DescribeSitesRequest: TCRequestModel {
        /// 按照站点id过滤
        public let siteIds: [String]?

        /// 模糊匹配站点名称
        public let name: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(siteIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.siteIds = siteIds
            self.name = name
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case siteIds = "SiteIds"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSites返回参数结构体
    public struct DescribeSitesResponse: TCResponseModel {
        /// 符合查询条件的站点列表
        public let siteSet: [Site]

        /// 符合条件的站点数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case siteSet = "SiteSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询站点列表
    @inlinable
    public func describeSites(_ input: DescribeSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesResponse> {
        self.client.execute(action: "DescribeSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询站点列表
    @inlinable
    public func describeSites(_ input: DescribeSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesResponse {
        try await self.client.execute(action: "DescribeSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询站点列表
    @inlinable
    public func describeSites(siteIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesResponse> {
        self.describeSites(DescribeSitesRequest(siteIds: siteIds, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询站点列表
    @inlinable
    public func describeSites(siteIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesResponse {
        try await self.describeSites(DescribeSitesRequest(siteIds: siteIds, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
