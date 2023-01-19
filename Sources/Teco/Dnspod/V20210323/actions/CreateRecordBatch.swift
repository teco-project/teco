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

extension Dnspod {
    /// CreateRecordBatch请求参数结构体
    public struct CreateRecordBatchRequest: TCRequestModel {
        /// 域名ID，多个 domain_id 用英文逗号进行分割。
        public let domainIdList: [String]

        /// 记录数组
        public let recordList: [AddRecordBatch]

        public init(domainIdList: [String], recordList: [AddRecordBatch]) {
            self.domainIdList = domainIdList
            self.recordList = recordList
        }

        enum CodingKeys: String, CodingKey {
            case domainIdList = "DomainIdList"
            case recordList = "RecordList"
        }
    }

    /// CreateRecordBatch返回参数结构体
    public struct CreateRecordBatchResponse: TCResponseModel {
        /// 批量添加域名信息
        public let detailList: [CreateRecordBatchDetail]

        /// 批量任务的ID
        public let jobId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailList = "DetailList"
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 批量添加记录
    @inlinable
    public func createRecordBatch(_ input: CreateRecordBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordBatchResponse> {
        self.client.execute(action: "CreateRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量添加记录
    @inlinable
    public func createRecordBatch(_ input: CreateRecordBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordBatchResponse {
        try await self.client.execute(action: "CreateRecordBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量添加记录
    @inlinable
    public func createRecordBatch(domainIdList: [String], recordList: [AddRecordBatch], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordBatchResponse> {
        self.createRecordBatch(CreateRecordBatchRequest(domainIdList: domainIdList, recordList: recordList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量添加记录
    @inlinable
    public func createRecordBatch(domainIdList: [String], recordList: [AddRecordBatch], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordBatchResponse {
        try await self.createRecordBatch(CreateRecordBatchRequest(domainIdList: domainIdList, recordList: recordList), region: region, logger: logger, on: eventLoop)
    }
}
