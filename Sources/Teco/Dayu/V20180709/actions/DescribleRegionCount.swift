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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dayu {
    /// DescribleRegionCount请求参数结构体
    public struct DescribleRegionCountRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；）
        public let business: String

        /// 根据线路统计，取值为[1（BGP线路），2（南京电信），3（南京联通），99（第三方合作线路）]；只对高防IP产品有效，其他产品此字段忽略
        public let lineList: [UInt64]?

        public init(business: String, lineList: [UInt64]? = nil) {
            self.business = business
            self.lineList = lineList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case lineList = "LineList"
        }
    }

    /// DescribleRegionCount返回参数结构体
    public struct DescribleRegionCountResponse: TCResponseModel {
        /// 地域资源实例数
        public let regionList: [RegionInstanceCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionList = "RegionList"
            case requestId = "RequestId"
        }
    }

    /// 获取地域的资源实例数
    @inlinable
    public func describleRegionCount(_ input: DescribleRegionCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleRegionCountResponse> {
        self.client.execute(action: "DescribleRegionCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取地域的资源实例数
    @inlinable
    public func describleRegionCount(_ input: DescribleRegionCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleRegionCountResponse {
        try await self.client.execute(action: "DescribleRegionCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取地域的资源实例数
    @inlinable
    public func describleRegionCount(business: String, lineList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleRegionCountResponse> {
        self.describleRegionCount(.init(business: business, lineList: lineList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取地域的资源实例数
    @inlinable
    public func describleRegionCount(business: String, lineList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleRegionCountResponse {
        try await self.describleRegionCount(.init(business: business, lineList: lineList), region: region, logger: logger, on: eventLoop)
    }
}
