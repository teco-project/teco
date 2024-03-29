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

extension Ic {
    /// DescribeSms请求参数结构体
    public struct DescribeSmsRequest: TCPaginatedRequest {
        /// 应用ID
        public let sdkappid: Int64

        /// 卡片ID
        public let iccid: String?

        /// 卡片号码
        public let msisdn: String?

        /// 短信类型
        public let smsType: Int64?

        /// 开始时间  YYYY-MM-DD HH:mm:ss
        public let beginTime: String?

        /// 结束时间  YYYY-MM-DD HH:mm:ss
        public let endTime: String?

        /// 偏移量
        public let offset: UInt64?

        /// 小于200
        public let limit: UInt64?

        public init(sdkappid: Int64, iccid: String? = nil, msisdn: String? = nil, smsType: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.sdkappid = sdkappid
            self.iccid = iccid
            self.msisdn = msisdn
            self.smsType = smsType
            self.beginTime = beginTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case iccid = "Iccid"
            case msisdn = "Msisdn"
            case smsType = "SmsType"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSmsResponse) -> DescribeSmsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(sdkappid: self.sdkappid, iccid: self.iccid, msisdn: self.msisdn, smsType: self.smsType, beginTime: self.beginTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSms返回参数结构体
    public struct DescribeSmsResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 短信列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ResSms]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ResSms`` list from the paginated response.
        public func getItems() -> [ResSms] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询短信列表
    @inlinable
    public func describeSms(_ input: DescribeSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsResponse> {
        self.client.execute(action: "DescribeSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询短信列表
    @inlinable
    public func describeSms(_ input: DescribeSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsResponse {
        try await self.client.execute(action: "DescribeSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询短信列表
    @inlinable
    public func describeSms(sdkappid: Int64, iccid: String? = nil, msisdn: String? = nil, smsType: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsResponse> {
        self.describeSms(.init(sdkappid: sdkappid, iccid: iccid, msisdn: msisdn, smsType: smsType, beginTime: beginTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询短信列表
    @inlinable
    public func describeSms(sdkappid: Int64, iccid: String? = nil, msisdn: String? = nil, smsType: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsResponse {
        try await self.describeSms(.init(sdkappid: sdkappid, iccid: iccid, msisdn: msisdn, smsType: smsType, beginTime: beginTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询短信列表
    @inlinable
    public func describeSmsPaginated(_ input: DescribeSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResSms])> {
        self.client.paginate(input: input, region: region, command: self.describeSms, logger: logger, on: eventLoop)
    }

    /// 查询短信列表
    @inlinable @discardableResult
    public func describeSmsPaginated(_ input: DescribeSmsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSmsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSms, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询短信列表
    ///
    /// - Returns: `AsyncSequence`s of ``ResSms`` and ``DescribeSmsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSmsPaginator(_ input: DescribeSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSmsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSms, logger: logger, on: eventLoop)
    }
}
