//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dayu {
    /// DescribeDDoSAttackIPRegionMap请求参数结构体
    public struct DescribeDDoSAttackIPRegionMapRequest: TCRequestModel {
        /// 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 统计开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date
        
        /// 统计结束时间，最大可统计的时间范围是半年；
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date
        
        /// 指定资源的特定IP的攻击源，可选
        public let ipList: [String]?
        
        public init (business: String, id: String, startTime: Date, endTime: Date, ipList: [String]? = nil) {
            self.business = business
            self.id = id
            self.startTime = startTime
            self.endTime = endTime
            self.ipList = ipList
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case ipList = "IpList"
        }
    }
    
    /// DescribeDDoSAttackIPRegionMap返回参数结构体
    public struct DescribeDDoSAttackIPRegionMapResponse: TCResponseModel {
        /// 全球地域分布数据
        public let nationCount: [KeyValueRecord]
        
        /// 国内省份地域分布数据
        public let provinceCount: [KeyValueRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case nationCount = "NationCount"
            case provinceCount = "ProvinceCount"
            case requestId = "RequestId"
        }
    }
    
    /// DDoS攻击源IP地域分布图
    ///
    /// 获取DDoS攻击源IP地域分布图，支持全球攻击分布和国内省份攻击分布；
    @inlinable
    public func describeDDoSAttackIPRegionMap(_ input: DescribeDDoSAttackIPRegionMapRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAttackIPRegionMapResponse > {
        self.client.execute(action: "DescribeDDoSAttackIPRegionMap", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DDoS攻击源IP地域分布图
    ///
    /// 获取DDoS攻击源IP地域分布图，支持全球攻击分布和国内省份攻击分布；
    @inlinable
    public func describeDDoSAttackIPRegionMap(_ input: DescribeDDoSAttackIPRegionMapRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackIPRegionMapResponse {
        try await self.client.execute(action: "DescribeDDoSAttackIPRegionMap", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DDoS攻击源IP地域分布图
    ///
    /// 获取DDoS攻击源IP地域分布图，支持全球攻击分布和国内省份攻击分布；
    @inlinable
    public func describeDDoSAttackIPRegionMap(business: String, id: String, startTime: Date, endTime: Date, ipList: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAttackIPRegionMapResponse > {
        self.describeDDoSAttackIPRegionMap(DescribeDDoSAttackIPRegionMapRequest(business: business, id: id, startTime: startTime, endTime: endTime, ipList: ipList), logger: logger, on: eventLoop)
    }
    
    /// DDoS攻击源IP地域分布图
    ///
    /// 获取DDoS攻击源IP地域分布图，支持全球攻击分布和国内省份攻击分布；
    @inlinable
    public func describeDDoSAttackIPRegionMap(business: String, id: String, startTime: Date, endTime: Date, ipList: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackIPRegionMapResponse {
        try await self.describeDDoSAttackIPRegionMap(DescribeDDoSAttackIPRegionMapRequest(business: business, id: id, startTime: startTime, endTime: endTime, ipList: ipList), logger: logger, on: eventLoop)
    }
}
