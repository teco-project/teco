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

extension Dayu {
    /// DescribeDDoSUsedStatis请求参数结构体
    public struct DescribeDDoSUsedStatisRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        public init(business: String) {
            self.business = business
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
        }
    }

    /// DescribeDDoSUsedStatis返回参数结构体
    public struct DescribeDDoSUsedStatisResponse: TCResponseModel {
        /// 字段值，如下：
        /// Days：高防资源使用天数
        /// Attacks：DDoS防护次数
        public let data: [KeyValue]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS防护使用统计
    ///
    /// 统计用户的高防资源的使用天数和DDoS攻击防护次数
    @inlinable
    public func describeDDoSUsedStatis(_ input: DescribeDDoSUsedStatisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSUsedStatisResponse> {
        self.client.execute(action: "DescribeDDoSUsedStatis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护使用统计
    ///
    /// 统计用户的高防资源的使用天数和DDoS攻击防护次数
    @inlinable
    public func describeDDoSUsedStatis(_ input: DescribeDDoSUsedStatisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSUsedStatisResponse {
        try await self.client.execute(action: "DescribeDDoSUsedStatis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护使用统计
    ///
    /// 统计用户的高防资源的使用天数和DDoS攻击防护次数
    @inlinable
    public func describeDDoSUsedStatis(business: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSUsedStatisResponse> {
        self.describeDDoSUsedStatis(DescribeDDoSUsedStatisRequest(business: business), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护使用统计
    ///
    /// 统计用户的高防资源的使用天数和DDoS攻击防护次数
    @inlinable
    public func describeDDoSUsedStatis(business: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSUsedStatisResponse {
        try await self.describeDDoSUsedStatis(DescribeDDoSUsedStatisRequest(business: business), region: region, logger: logger, on: eventLoop)
    }
}
