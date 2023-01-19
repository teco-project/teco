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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Faceid {
    /// GetWeChatBillDetails请求参数结构体
    public struct GetWeChatBillDetailsRequest: TCRequestModel {
        /// 拉取的日期（YYYY-MM-DD）。最大可追溯到365天前。当天6点后才能拉取前一天的数据。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var date: Date

        /// 游标。用于分页，取第一页时传0，取后续页面时，传入本接口响应中返回的NextCursor字段的值。
        public let cursor: UInt64

        /// 需要拉取账单详情业务对应的RuleId。不传会返回所有RuleId数据。默认为空字符串。
        public let ruleId: String?

        public init(date: Date, cursor: UInt64, ruleId: String? = nil) {
            self._date = .init(wrappedValue: date)
            self.cursor = cursor
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case cursor = "Cursor"
            case ruleId = "RuleId"
        }
    }

    /// GetWeChatBillDetails返回参数结构体
    public struct GetWeChatBillDetailsResponse: TCResponseModel {
        /// 是否还有下一页。该字段为true时，需要将NextCursor的值作为入参Cursor继续调用本接口。
        public let hasNextPage: Bool

        /// 下一页的游标。用于分页。
        public let nextCursor: UInt64

        /// 数据
        public let weChatBillDetails: [WeChatBillDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hasNextPage = "HasNextPage"
            case nextCursor = "NextCursor"
            case weChatBillDetails = "WeChatBillDetails"
            case requestId = "RequestId"
        }
    }

    /// 查询账单明细（微信渠道）
    ///
    /// 查询微信渠道服务（微信小程序、微信原生H5、微信普通H5）的账单明细及计费状态。
    @inlinable
    public func getWeChatBillDetails(_ input: GetWeChatBillDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWeChatBillDetailsResponse> {
        self.client.execute(action: "GetWeChatBillDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账单明细（微信渠道）
    ///
    /// 查询微信渠道服务（微信小程序、微信原生H5、微信普通H5）的账单明细及计费状态。
    @inlinable
    public func getWeChatBillDetails(_ input: GetWeChatBillDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWeChatBillDetailsResponse {
        try await self.client.execute(action: "GetWeChatBillDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账单明细（微信渠道）
    ///
    /// 查询微信渠道服务（微信小程序、微信原生H5、微信普通H5）的账单明细及计费状态。
    @inlinable
    public func getWeChatBillDetails(date: Date, cursor: UInt64, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWeChatBillDetailsResponse> {
        self.getWeChatBillDetails(GetWeChatBillDetailsRequest(date: date, cursor: cursor, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账单明细（微信渠道）
    ///
    /// 查询微信渠道服务（微信小程序、微信原生H5、微信普通H5）的账单明细及计费状态。
    @inlinable
    public func getWeChatBillDetails(date: Date, cursor: UInt64, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWeChatBillDetailsResponse {
        try await self.getWeChatBillDetails(GetWeChatBillDetailsRequest(date: date, cursor: cursor, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
