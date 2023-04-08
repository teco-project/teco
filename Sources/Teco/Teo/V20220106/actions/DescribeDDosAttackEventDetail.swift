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

extension Teo {
    /// DescribeDDosAttackEventDetail请求参数结构体
    public struct DescribeDDosAttackEventDetailRequest: TCRequestModel {
        /// 事件id。
        public let eventId: String

        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?

        public init(eventId: String, area: String? = nil) {
            self.eventId = eventId
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case area = "Area"
        }
    }

    /// DescribeDDosAttackEventDetail返回参数结构体
    public struct DescribeDDosAttackEventDetailResponse: TCResponseModel {
        /// DDos攻击事件详情。
        public let data: DDosAttackEventDetailData

        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64

        /// 请求响应信息。
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 查询DDos攻击事件详情
    @inlinable
    public func describeDDosAttackEventDetail(_ input: DescribeDDosAttackEventDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackEventDetailResponse> {
        self.client.execute(action: "DescribeDDosAttackEventDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击事件详情
    @inlinable
    public func describeDDosAttackEventDetail(_ input: DescribeDDosAttackEventDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackEventDetailResponse {
        try await self.client.execute(action: "DescribeDDosAttackEventDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDos攻击事件详情
    @inlinable
    public func describeDDosAttackEventDetail(eventId: String, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackEventDetailResponse> {
        self.describeDDosAttackEventDetail(.init(eventId: eventId, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击事件详情
    @inlinable
    public func describeDDosAttackEventDetail(eventId: String, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackEventDetailResponse {
        try await self.describeDDosAttackEventDetail(.init(eventId: eventId, area: area), region: region, logger: logger, on: eventLoop)
    }
}
