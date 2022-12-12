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

extension Teo {
    /// DescribeDDoSAttackEventDetail请求参数结构体
    public struct DescribeDDoSAttackEventDetailRequest: TCRequestModel {
        /// 查询的事件ID。
        public let eventId: String
        
        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?
        
        public init (eventId: String, area: String? = nil) {
            self.eventId = eventId
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case area = "Area"
        }
    }
    
    /// DescribeDDoSAttackEventDetail返回参数结构体
    public struct DescribeDDoSAttackEventDetailResponse: TCResponseModel {
        /// DDoS攻击事件详情。
        public let data: DDoSAttackEventDetailData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 查询DDoS攻击事件详情
    ///
    /// 本接口（DescribeDDoSAttackEventDetail）用于查询DDoS攻击事件详情。
    @inlinable
    public func describeDDoSAttackEventDetail(_ input: DescribeDDoSAttackEventDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAttackEventDetailResponse > {
        self.client.execute(action: "DescribeDDoSAttackEventDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询DDoS攻击事件详情
    ///
    /// 本接口（DescribeDDoSAttackEventDetail）用于查询DDoS攻击事件详情。
    @inlinable
    public func describeDDoSAttackEventDetail(_ input: DescribeDDoSAttackEventDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackEventDetailResponse {
        try await self.client.execute(action: "DescribeDDoSAttackEventDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
