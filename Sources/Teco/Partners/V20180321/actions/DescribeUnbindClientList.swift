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

extension Partners {
    /// DescribeUnbindClientList请求参数结构体
    public struct DescribeUnbindClientListRequest: TCRequestModel {
        /// 解绑状态：0:所有,1:审核中,2已解绑
        public let status: UInt64

        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        /// 解绑账号ID
        public let unbindUin: String?

        /// 解绑申请时间范围起始点
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var applyTimeStart: Date?

        /// 解绑申请时间范围终止点
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var applyTimeEnd: Date?

        /// 对申请时间的升序降序，值：asc，desc
        public let orderDirection: String?

        public init(status: UInt64, offset: UInt64, limit: UInt64, unbindUin: String? = nil, applyTimeStart: Date? = nil, applyTimeEnd: Date? = nil, orderDirection: String? = nil) {
            self.status = status
            self.offset = offset
            self.limit = limit
            self.unbindUin = unbindUin
            self._applyTimeStart = .init(wrappedValue: applyTimeStart)
            self._applyTimeEnd = .init(wrappedValue: applyTimeEnd)
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case unbindUin = "UnbindUin"
            case applyTimeStart = "ApplyTimeStart"
            case applyTimeEnd = "ApplyTimeEnd"
            case orderDirection = "OrderDirection"
        }
    }

    /// DescribeUnbindClientList返回参数结构体
    public struct DescribeUnbindClientListResponse: TCResponseModel {
        /// 符合条件的解绑客户数量
        public let totalCount: UInt64

        /// 符合条件的解绑客户列表
        public let unbindClientList: [UnbindClientElem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case unbindClientList = "UnbindClientList"
            case requestId = "RequestId"
        }
    }

    /// 代理商名下客户解绑记录查询接口
    @inlinable
    public func describeUnbindClientList(_ input: DescribeUnbindClientListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnbindClientListResponse> {
        self.client.execute(action: "DescribeUnbindClientList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商名下客户解绑记录查询接口
    @inlinable
    public func describeUnbindClientList(_ input: DescribeUnbindClientListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnbindClientListResponse {
        try await self.client.execute(action: "DescribeUnbindClientList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商名下客户解绑记录查询接口
    @inlinable
    public func describeUnbindClientList(status: UInt64, offset: UInt64, limit: UInt64, unbindUin: String? = nil, applyTimeStart: Date? = nil, applyTimeEnd: Date? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnbindClientListResponse> {
        self.describeUnbindClientList(DescribeUnbindClientListRequest(status: status, offset: offset, limit: limit, unbindUin: unbindUin, applyTimeStart: applyTimeStart, applyTimeEnd: applyTimeEnd, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 代理商名下客户解绑记录查询接口
    @inlinable
    public func describeUnbindClientList(status: UInt64, offset: UInt64, limit: UInt64, unbindUin: String? = nil, applyTimeStart: Date? = nil, applyTimeEnd: Date? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnbindClientListResponse {
        try await self.describeUnbindClientList(DescribeUnbindClientListRequest(status: status, offset: offset, limit: limit, unbindUin: unbindUin, applyTimeStart: applyTimeStart, applyTimeEnd: applyTimeEnd, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }
}
