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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cr {
    /// DescribeRecords请求参数结构体
    public struct DescribeRecordsRequest: TCRequestModel {
        /// 模块名，本接口取值：Record
        public let module: String

        /// 操作名，本接口取值：List
        public let operation: String

        /// 产品ID
        public let productId: String?

        /// 案件编号
        public let accountNum: String?

        /// 被叫号码
        public let calledPhone: String?

        /// 查询起始日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startBizDate: Date?

        /// 查询结束日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endBizDate: Date?

        /// 分页参数，索引，默认为0
        public let offset: String?

        /// 分页参数，页长，默认为20
        public let limit: String?

        /// 实例ID，不传默认为系统分配的初始实例
        public let instId: String?

        public init(module: String, operation: String, productId: String? = nil, accountNum: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, offset: String? = nil, limit: String? = nil, instId: String? = nil) {
            self.module = module
            self.operation = operation
            self.productId = productId
            self.accountNum = accountNum
            self.calledPhone = calledPhone
            self._startBizDate = .init(wrappedValue: startBizDate)
            self._endBizDate = .init(wrappedValue: endBizDate)
            self.offset = offset
            self.limit = limit
            self.instId = instId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case productId = "ProductId"
            case accountNum = "AccountNum"
            case calledPhone = "CalledPhone"
            case startBizDate = "StartBizDate"
            case endBizDate = "EndBizDate"
            case offset = "Offset"
            case limit = "Limit"
            case instId = "InstId"
        }
    }

    /// DescribeRecords返回参数结构体
    public struct DescribeRecordsResponse: TCResponseModel {
        /// 录音列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordList: [SingleRecord]?

        /// 录音总量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordList = "RecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 录音查询（接口）
    ///
    /// 用于获取指定案件的录音地址，次日早上8:00后可查询前日录音。
    @inlinable
    public func describeRecords(_ input: DescribeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordsResponse> {
        self.client.execute(action: "DescribeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 录音查询（接口）
    ///
    /// 用于获取指定案件的录音地址，次日早上8:00后可查询前日录音。
    @inlinable
    public func describeRecords(_ input: DescribeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordsResponse {
        try await self.client.execute(action: "DescribeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 录音查询（接口）
    ///
    /// 用于获取指定案件的录音地址，次日早上8:00后可查询前日录音。
    @inlinable
    public func describeRecords(module: String, operation: String, productId: String? = nil, accountNum: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, offset: String? = nil, limit: String? = nil, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordsResponse> {
        let input = DescribeRecordsRequest(module: module, operation: operation, productId: productId, accountNum: accountNum, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate, offset: offset, limit: limit, instId: instId)
        return self.client.execute(action: "DescribeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 录音查询（接口）
    ///
    /// 用于获取指定案件的录音地址，次日早上8:00后可查询前日录音。
    @inlinable
    public func describeRecords(module: String, operation: String, productId: String? = nil, accountNum: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, offset: String? = nil, limit: String? = nil, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordsResponse {
        let input = DescribeRecordsRequest(module: module, operation: operation, productId: productId, accountNum: accountNum, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate, offset: offset, limit: limit, instId: instId)
        return try await self.client.execute(action: "DescribeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
