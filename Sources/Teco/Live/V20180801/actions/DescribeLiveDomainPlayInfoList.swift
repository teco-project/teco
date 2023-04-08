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

import TecoCore

extension Live {
    /// DescribeLiveDomainPlayInfoList请求参数结构体
    public struct DescribeLiveDomainPlayInfoListRequest: TCRequestModel {
        /// 播放域名列表。
        public let playDomains: [String]?

        public init(playDomains: [String]? = nil) {
            self.playDomains = playDomains
        }

        enum CodingKeys: String, CodingKey {
            case playDomains = "PlayDomains"
        }
    }

    /// DescribeLiveDomainPlayInfoList返回参数结构体
    public struct DescribeLiveDomainPlayInfoListResponse: TCResponseModel {
        /// 数据时间，格式为yyyy-mm-dd HH:MM:SS。
        public let time: String

        /// 实时总带宽。
        public let totalBandwidth: Float

        /// 实时总流量。
        public let totalFlux: Float

        /// 总请求数。
        public let totalRequest: UInt64

        /// 实时总连接数。
        public let totalOnline: UInt64

        /// 分域名的数据情况。
        public let domainInfoList: [DomainInfoList]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case totalBandwidth = "TotalBandwidth"
            case totalFlux = "TotalFlux"
            case totalRequest = "TotalRequest"
            case totalOnline = "TotalOnline"
            case domainInfoList = "DomainInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询实时的域名维度下行播放数据
    ///
    /// 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。
    @inlinable
    public func describeLiveDomainPlayInfoList(_ input: DescribeLiveDomainPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainPlayInfoListResponse> {
        self.client.execute(action: "DescribeLiveDomainPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实时的域名维度下行播放数据
    ///
    /// 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。
    @inlinable
    public func describeLiveDomainPlayInfoList(_ input: DescribeLiveDomainPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainPlayInfoListResponse {
        try await self.client.execute(action: "DescribeLiveDomainPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实时的域名维度下行播放数据
    ///
    /// 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。
    @inlinable
    public func describeLiveDomainPlayInfoList(playDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainPlayInfoListResponse> {
        self.describeLiveDomainPlayInfoList(.init(playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实时的域名维度下行播放数据
    ///
    /// 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。
    @inlinable
    public func describeLiveDomainPlayInfoList(playDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainPlayInfoListResponse {
        try await self.describeLiveDomainPlayInfoList(.init(playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }
}
