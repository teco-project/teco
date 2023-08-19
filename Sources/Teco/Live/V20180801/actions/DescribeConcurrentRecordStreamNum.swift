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

extension Live {
    /// DescribeConcurrentRecordStreamNum请求参数结构体
    public struct DescribeConcurrentRecordStreamNumRequest: TCRequest {
        /// 直播类型，SlowLive：慢直播。
        /// NormalLive：普通直播。
        public let liveType: String

        /// 起始时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        /// 可以查询最近180天的数据。
        public let startTime: String

        /// 结束时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        /// 时间跨度最大支持31天。
        public let endTime: String

        /// 如果为空，查询所有地区数据；如果为“Mainland”，查询国内数据；如果为“Oversea”，则查询国外数据。
        public let mainlandOrOversea: String?

        /// 推流域名列表，不填表示总体数据。
        public let pushDomains: [String]?

        public init(liveType: String, startTime: String, endTime: String, mainlandOrOversea: String? = nil, pushDomains: [String]? = nil) {
            self.liveType = liveType
            self.startTime = startTime
            self.endTime = endTime
            self.mainlandOrOversea = mainlandOrOversea
            self.pushDomains = pushDomains
        }

        enum CodingKeys: String, CodingKey {
            case liveType = "LiveType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case mainlandOrOversea = "MainlandOrOversea"
            case pushDomains = "PushDomains"
        }
    }

    /// DescribeConcurrentRecordStreamNum返回参数结构体
    public struct DescribeConcurrentRecordStreamNumResponse: TCResponse {
        /// 统计信息列表。
        public let dataInfoList: [ConcurrentRecordStreamNum]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询并发录制路数
    ///
    /// 查询并发录制路数，对慢直播和普通直播适用。
    @inlinable
    public func describeConcurrentRecordStreamNum(_ input: DescribeConcurrentRecordStreamNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConcurrentRecordStreamNumResponse> {
        self.client.execute(action: "DescribeConcurrentRecordStreamNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询并发录制路数
    ///
    /// 查询并发录制路数，对慢直播和普通直播适用。
    @inlinable
    public func describeConcurrentRecordStreamNum(_ input: DescribeConcurrentRecordStreamNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConcurrentRecordStreamNumResponse {
        try await self.client.execute(action: "DescribeConcurrentRecordStreamNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询并发录制路数
    ///
    /// 查询并发录制路数，对慢直播和普通直播适用。
    @inlinable
    public func describeConcurrentRecordStreamNum(liveType: String, startTime: String, endTime: String, mainlandOrOversea: String? = nil, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConcurrentRecordStreamNumResponse> {
        self.describeConcurrentRecordStreamNum(.init(liveType: liveType, startTime: startTime, endTime: endTime, mainlandOrOversea: mainlandOrOversea, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 查询并发录制路数
    ///
    /// 查询并发录制路数，对慢直播和普通直播适用。
    @inlinable
    public func describeConcurrentRecordStreamNum(liveType: String, startTime: String, endTime: String, mainlandOrOversea: String? = nil, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConcurrentRecordStreamNumResponse {
        try await self.describeConcurrentRecordStreamNum(.init(liveType: liveType, startTime: startTime, endTime: endTime, mainlandOrOversea: mainlandOrOversea, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }
}
