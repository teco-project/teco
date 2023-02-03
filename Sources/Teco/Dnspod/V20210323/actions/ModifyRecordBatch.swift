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

extension Dnspod {
    /// ModifyRecordBatch请求参数结构体
    public struct ModifyRecordBatchRequest: TCRequestModel {
        /// 记录ID数组。可以通过接口DescribeRecordList查到所有的解析记录列表以及对应的RecordId
        public let recordIdList: [UInt64]

        /// 要修改的字段，可选值为 [“sub_domain”、”record_type”、”area”、”value”、”mx”、”ttl”、”status”] 中的某一个。
        public let change: String

        /// 修改为，具体依赖 change 字段，必填参数。
        public let changeTo: String

        /// 要修改到的记录值，仅当 change 字段为 “record_type” 时为必填参数。
        public let value: String?

        /// MX记录优先级，仅当修改为 MX 记录时为必填参数。
        public let mx: String?

        public init(recordIdList: [UInt64], change: String, changeTo: String, value: String? = nil, mx: String? = nil) {
            self.recordIdList = recordIdList
            self.change = change
            self.changeTo = changeTo
            self.value = value
            self.mx = mx
        }

        enum CodingKeys: String, CodingKey {
            case recordIdList = "RecordIdList"
            case change = "Change"
            case changeTo = "ChangeTo"
            case value = "Value"
            case mx = "MX"
        }
    }

    /// ModifyRecordBatch返回参数结构体
    public struct ModifyRecordBatchResponse: TCResponseModel {
        /// 批量任务ID
        public let jobId: UInt64

        /// 见modifyRecordBatchDetail
        public let detailList: [ModifyRecordBatchDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case detailList = "DetailList"
            case requestId = "RequestId"
        }
    }

    /// 批量修改记录
    @inlinable
    public func modifyRecordBatch(_ input: ModifyRecordBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordBatchResponse> {
        self.client.execute(action: "ModifyRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改记录
    @inlinable
    public func modifyRecordBatch(_ input: ModifyRecordBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordBatchResponse {
        try await self.client.execute(action: "ModifyRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改记录
    @inlinable
    public func modifyRecordBatch(recordIdList: [UInt64], change: String, changeTo: String, value: String? = nil, mx: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordBatchResponse> {
        let input = ModifyRecordBatchRequest(recordIdList: recordIdList, change: change, changeTo: changeTo, value: value, mx: mx)
        return self.client.execute(action: "ModifyRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改记录
    @inlinable
    public func modifyRecordBatch(recordIdList: [UInt64], change: String, changeTo: String, value: String? = nil, mx: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordBatchResponse {
        let input = ModifyRecordBatchRequest(recordIdList: recordIdList, change: change, changeTo: changeTo, value: value, mx: mx)
        return try await self.client.execute(action: "ModifyRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
