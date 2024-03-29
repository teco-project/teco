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

extension Yunsou {
    /// DataSearch请求参数结构体
    public struct DataSearchRequest: TCRequest {
        /// 云搜的业务ID，用以表明当前数据请求的业务
        public let resourceId: UInt64

        /// 检索串
        public let searchQuery: String?

        /// 当前页，从第0页开始计算
        public let pageId: UInt64?

        /// 每页结果数
        public let numPerPage: UInt64?

        /// 当前检索号，用于定位问题，建议指定并且全局唯一
        public let searchId: String?

        /// 请求编码，0表示utf8，1表示gbk，建议指定
        public let queryEncode: UInt64?

        /// 排序类型
        public let rankType: UInt64?

        /// 数值过滤，结果中按属性过滤
        public let numFilter: String?

        /// 分类过滤，导航类检索请求
        public let clFilter: String?

        /// 检索用户相关字段
        public let extra: String?

        /// 检索来源
        public let sourceId: UInt64?

        /// 是否进行二次检索，0关闭，1打开
        public let secondSearch: UInt64?

        /// 指定返回最大篇数，无特殊原因不建议指定
        public let maxDocReturn: UInt64?

        /// 是否smartbox检索，0关闭，1打开
        public let isSmartbox: UInt64?

        /// 是否打开高红标亮，0关闭，1打开
        public let enableAbsHighlight: UInt64?

        /// 指定访问QC纠错业务ID
        public let qcBid: UInt64?

        /// 按指定字段进行group by，只能对数值字段进行操作
        public let groupBy: String?

        /// 按指定字段进行distinct，只能对数值字段进行操作
        public let distinct: String?

        /// 高级排序参数，具体参见高级排序说明
        public let l4RankExpression: String?

        /// 高级排序参数，具体参见高级排序说明
        public let matchValue: String?

        /// 经度信息
        public let longitude: Float?

        /// 纬度信息
        public let latitude: Float?

        /// 分类过滤并集
        public let multiFilter: [String]?

        public init(resourceId: UInt64, searchQuery: String? = nil, pageId: UInt64? = nil, numPerPage: UInt64? = nil, searchId: String? = nil, queryEncode: UInt64? = nil, rankType: UInt64? = nil, numFilter: String? = nil, clFilter: String? = nil, extra: String? = nil, sourceId: UInt64? = nil, secondSearch: UInt64? = nil, maxDocReturn: UInt64? = nil, isSmartbox: UInt64? = nil, enableAbsHighlight: UInt64? = nil, qcBid: UInt64? = nil, groupBy: String? = nil, distinct: String? = nil, l4RankExpression: String? = nil, matchValue: String? = nil, longitude: Float? = nil, latitude: Float? = nil, multiFilter: [String]? = nil) {
            self.resourceId = resourceId
            self.searchQuery = searchQuery
            self.pageId = pageId
            self.numPerPage = numPerPage
            self.searchId = searchId
            self.queryEncode = queryEncode
            self.rankType = rankType
            self.numFilter = numFilter
            self.clFilter = clFilter
            self.extra = extra
            self.sourceId = sourceId
            self.secondSearch = secondSearch
            self.maxDocReturn = maxDocReturn
            self.isSmartbox = isSmartbox
            self.enableAbsHighlight = enableAbsHighlight
            self.qcBid = qcBid
            self.groupBy = groupBy
            self.distinct = distinct
            self.l4RankExpression = l4RankExpression
            self.matchValue = matchValue
            self.longitude = longitude
            self.latitude = latitude
            self.multiFilter = multiFilter
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case searchQuery = "SearchQuery"
            case pageId = "PageId"
            case numPerPage = "NumPerPage"
            case searchId = "SearchId"
            case queryEncode = "QueryEncode"
            case rankType = "RankType"
            case numFilter = "NumFilter"
            case clFilter = "ClFilter"
            case extra = "Extra"
            case sourceId = "SourceId"
            case secondSearch = "SecondSearch"
            case maxDocReturn = "MaxDocReturn"
            case isSmartbox = "IsSmartbox"
            case enableAbsHighlight = "EnableAbsHighlight"
            case qcBid = "QcBid"
            case groupBy = "GroupBy"
            case distinct = "Distinct"
            case l4RankExpression = "L4RankExpression"
            case matchValue = "MatchValue"
            case longitude = "Longitude"
            case latitude = "Latitude"
            case multiFilter = "MultiFilter"
        }
    }

    /// DataSearch返回参数结构体
    public struct DataSearchResponse: TCResponse {
        /// 数据返回信息
        public let retMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case retMsg = "RetMsg"
            case requestId = "RequestId"
        }
    }

    /// 数据检索接口
    ///
    /// 用于检索云搜中的数据
    @inlinable
    public func dataSearch(_ input: DataSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataSearchResponse> {
        self.client.execute(action: "DataSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据检索接口
    ///
    /// 用于检索云搜中的数据
    @inlinable
    public func dataSearch(_ input: DataSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DataSearchResponse {
        try await self.client.execute(action: "DataSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据检索接口
    ///
    /// 用于检索云搜中的数据
    @inlinable
    public func dataSearch(resourceId: UInt64, searchQuery: String? = nil, pageId: UInt64? = nil, numPerPage: UInt64? = nil, searchId: String? = nil, queryEncode: UInt64? = nil, rankType: UInt64? = nil, numFilter: String? = nil, clFilter: String? = nil, extra: String? = nil, sourceId: UInt64? = nil, secondSearch: UInt64? = nil, maxDocReturn: UInt64? = nil, isSmartbox: UInt64? = nil, enableAbsHighlight: UInt64? = nil, qcBid: UInt64? = nil, groupBy: String? = nil, distinct: String? = nil, l4RankExpression: String? = nil, matchValue: String? = nil, longitude: Float? = nil, latitude: Float? = nil, multiFilter: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataSearchResponse> {
        self.dataSearch(.init(resourceId: resourceId, searchQuery: searchQuery, pageId: pageId, numPerPage: numPerPage, searchId: searchId, queryEncode: queryEncode, rankType: rankType, numFilter: numFilter, clFilter: clFilter, extra: extra, sourceId: sourceId, secondSearch: secondSearch, maxDocReturn: maxDocReturn, isSmartbox: isSmartbox, enableAbsHighlight: enableAbsHighlight, qcBid: qcBid, groupBy: groupBy, distinct: distinct, l4RankExpression: l4RankExpression, matchValue: matchValue, longitude: longitude, latitude: latitude, multiFilter: multiFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 数据检索接口
    ///
    /// 用于检索云搜中的数据
    @inlinable
    public func dataSearch(resourceId: UInt64, searchQuery: String? = nil, pageId: UInt64? = nil, numPerPage: UInt64? = nil, searchId: String? = nil, queryEncode: UInt64? = nil, rankType: UInt64? = nil, numFilter: String? = nil, clFilter: String? = nil, extra: String? = nil, sourceId: UInt64? = nil, secondSearch: UInt64? = nil, maxDocReturn: UInt64? = nil, isSmartbox: UInt64? = nil, enableAbsHighlight: UInt64? = nil, qcBid: UInt64? = nil, groupBy: String? = nil, distinct: String? = nil, l4RankExpression: String? = nil, matchValue: String? = nil, longitude: Float? = nil, latitude: Float? = nil, multiFilter: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DataSearchResponse {
        try await self.dataSearch(.init(resourceId: resourceId, searchQuery: searchQuery, pageId: pageId, numPerPage: numPerPage, searchId: searchId, queryEncode: queryEncode, rankType: rankType, numFilter: numFilter, clFilter: clFilter, extra: extra, sourceId: sourceId, secondSearch: secondSearch, maxDocReturn: maxDocReturn, isSmartbox: isSmartbox, enableAbsHighlight: enableAbsHighlight, qcBid: qcBid, groupBy: groupBy, distinct: distinct, l4RankExpression: l4RankExpression, matchValue: matchValue, longitude: longitude, latitude: latitude, multiFilter: multiFilter), region: region, logger: logger, on: eventLoop)
    }
}
