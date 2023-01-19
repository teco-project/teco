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

extension Live {
    /// DescribeLiveDomains请求参数结构体
    public struct DescribeLiveDomainsRequest: TCRequestModel {
        /// 域名状态过滤。0-停用，1-启用。
        public let domainStatus: UInt64?

        /// 域名类型过滤。0-推流，1-播放。
        public let domainType: UInt64?

        /// 分页大小，范围：10~100。默认10。
        public let pageSize: UInt64?

        /// 取第几页，范围：1~100000。默认1。
        public let pageNum: UInt64?

        /// 0 普通直播 1慢直播 默认0。
        public let isDelayLive: UInt64?

        /// 域名前缀。
        public let domainPrefix: String?

        /// 播放区域，只在 DomainType=1 时该参数有意义。
        /// 1: 国内。
        /// 2: 全球。
        /// 3: 海外。
        public let playType: UInt64?

        public init(domainStatus: UInt64? = nil, domainType: UInt64? = nil, pageSize: UInt64? = nil, pageNum: UInt64? = nil, isDelayLive: UInt64? = nil, domainPrefix: String? = nil, playType: UInt64? = nil) {
            self.domainStatus = domainStatus
            self.domainType = domainType
            self.pageSize = pageSize
            self.pageNum = pageNum
            self.isDelayLive = isDelayLive
            self.domainPrefix = domainPrefix
            self.playType = playType
        }

        enum CodingKeys: String, CodingKey {
            case domainStatus = "DomainStatus"
            case domainType = "DomainType"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
            case isDelayLive = "IsDelayLive"
            case domainPrefix = "DomainPrefix"
            case playType = "PlayType"
        }
    }

    /// DescribeLiveDomains返回参数结构体
    public struct DescribeLiveDomainsResponse: TCResponseModel {
        /// 总记录数。
        public let allCount: UInt64

        /// 域名详细信息列表。
        public let domainList: [DomainInfo]

        /// 可继续添加域名数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createLimitCount: Int64?

        /// 启用的播放域名加速区域统计，数组元素分别为：中国大陆（境内），全球地区，国际/港澳台（境外）域名数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let playTypeCount: [Int64]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allCount = "AllCount"
            case domainList = "DomainList"
            case createLimitCount = "CreateLimitCount"
            case playTypeCount = "PlayTypeCount"
            case requestId = "RequestId"
        }
    }

    /// 查询域名列表
    ///
    /// 根据域名状态、类型等信息查询用户的域名信息。
    @inlinable
    public func describeLiveDomains(_ input: DescribeLiveDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainsResponse> {
        self.client.execute(action: "DescribeLiveDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    ///
    /// 根据域名状态、类型等信息查询用户的域名信息。
    @inlinable
    public func describeLiveDomains(_ input: DescribeLiveDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainsResponse {
        try await self.client.execute(action: "DescribeLiveDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名列表
    ///
    /// 根据域名状态、类型等信息查询用户的域名信息。
    @inlinable
    public func describeLiveDomains(domainStatus: UInt64? = nil, domainType: UInt64? = nil, pageSize: UInt64? = nil, pageNum: UInt64? = nil, isDelayLive: UInt64? = nil, domainPrefix: String? = nil, playType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainsResponse> {
        self.describeLiveDomains(DescribeLiveDomainsRequest(domainStatus: domainStatus, domainType: domainType, pageSize: pageSize, pageNum: pageNum, isDelayLive: isDelayLive, domainPrefix: domainPrefix, playType: playType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    ///
    /// 根据域名状态、类型等信息查询用户的域名信息。
    @inlinable
    public func describeLiveDomains(domainStatus: UInt64? = nil, domainType: UInt64? = nil, pageSize: UInt64? = nil, pageNum: UInt64? = nil, isDelayLive: UInt64? = nil, domainPrefix: String? = nil, playType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainsResponse {
        try await self.describeLiveDomains(DescribeLiveDomainsRequest(domainStatus: domainStatus, domainType: domainType, pageSize: pageSize, pageNum: pageNum, isDelayLive: isDelayLive, domainPrefix: domainPrefix, playType: playType), region: region, logger: logger, on: eventLoop)
    }
}
