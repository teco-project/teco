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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dayu {
    /// DescribePcap请求参数结构体
    public struct DescribePcapRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源实例ID
        public let id: String

        /// 攻击事件的开始时间，格式为"2018-08-28 07:00:00"
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 攻击事件的结束时间，格式为"2018-08-28 07:02:00"
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 资源的IP，只有当Business为net时才需要填写资源实例下的IP；
        public let ip: String?

        public init(business: String, id: String, startTime: Date, endTime: Date, ip: String? = nil) {
            self.business = business
            self.id = id
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.ip = ip
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case ip = "Ip"
        }
    }

    /// DescribePcap返回参数结构体
    public struct DescribePcapResponse: TCResponse {
        /// pcap包的下载链接列表，无pcap包时为空数组；
        public let pcapUrlList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pcapUrlList = "PcapUrlList"
            case requestId = "RequestId"
        }
    }

    /// 下载攻击事件的pcap包
    @inlinable
    public func describePcap(_ input: DescribePcapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePcapResponse> {
        self.client.execute(action: "DescribePcap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载攻击事件的pcap包
    @inlinable
    public func describePcap(_ input: DescribePcapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePcapResponse {
        try await self.client.execute(action: "DescribePcap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载攻击事件的pcap包
    @inlinable
    public func describePcap(business: String, id: String, startTime: Date, endTime: Date, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePcapResponse> {
        self.describePcap(.init(business: business, id: id, startTime: startTime, endTime: endTime, ip: ip), region: region, logger: logger, on: eventLoop)
    }

    /// 下载攻击事件的pcap包
    @inlinable
    public func describePcap(business: String, id: String, startTime: Date, endTime: Date, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePcapResponse {
        try await self.describePcap(.init(business: business, id: id, startTime: startTime, endTime: endTime, ip: ip), region: region, logger: logger, on: eventLoop)
    }
}
