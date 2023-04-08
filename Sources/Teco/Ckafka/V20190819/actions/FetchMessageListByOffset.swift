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

import TecoCore
import TecoPaginationHelpers

extension Ckafka {
    /// FetchMessageListByOffset请求参数结构体
    public struct FetchMessageListByOffsetRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// 主题名
        public let topic: String

        /// 分区id
        public let partition: Int64

        /// 位点信息
        public let offset: Int64

        /// 最大查询条数，默认20，最大20
        public let singlePartitionRecordNumber: Int64?

        public init(instanceId: String, topic: String, partition: Int64, offset: Int64, singlePartitionRecordNumber: Int64? = nil) {
            self.instanceId = instanceId
            self.topic = topic
            self.partition = partition
            self.offset = offset
            self.singlePartitionRecordNumber = singlePartitionRecordNumber
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topic = "Topic"
            case partition = "Partition"
            case offset = "Offset"
            case singlePartitionRecordNumber = "SinglePartitionRecordNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: FetchMessageListByOffsetResponse) -> FetchMessageListByOffsetRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return FetchMessageListByOffsetRequest(instanceId: self.instanceId, topic: self.topic, partition: self.partition, offset: self.offset + .init(response.getItems().count), singlePartitionRecordNumber: self.singlePartitionRecordNumber)
        }
    }

    /// FetchMessageListByOffset返回参数结构体
    public struct FetchMessageListByOffsetResponse: TCPaginatedResponse {
        /// 返回结果。注意，列表中不返回具体的消息内容（key、value），如果需要查询具体消息内容，请使用FetchMessageByOffset接口
        public let result: [ConsumerRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConsumerRecord] {
            self.result
        }
    }

    /// 根据位点查询消息列表
    @inlinable
    public func fetchMessageListByOffset(_ input: FetchMessageListByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchMessageListByOffsetResponse> {
        self.client.execute(action: "FetchMessageListByOffset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据位点查询消息列表
    @inlinable
    public func fetchMessageListByOffset(_ input: FetchMessageListByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchMessageListByOffsetResponse {
        try await self.client.execute(action: "FetchMessageListByOffset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据位点查询消息列表
    @inlinable
    public func fetchMessageListByOffset(instanceId: String, topic: String, partition: Int64, offset: Int64, singlePartitionRecordNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchMessageListByOffsetResponse> {
        self.fetchMessageListByOffset(.init(instanceId: instanceId, topic: topic, partition: partition, offset: offset, singlePartitionRecordNumber: singlePartitionRecordNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 根据位点查询消息列表
    @inlinable
    public func fetchMessageListByOffset(instanceId: String, topic: String, partition: Int64, offset: Int64, singlePartitionRecordNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchMessageListByOffsetResponse {
        try await self.fetchMessageListByOffset(.init(instanceId: instanceId, topic: topic, partition: partition, offset: offset, singlePartitionRecordNumber: singlePartitionRecordNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 根据位点查询消息列表
    @inlinable
    public func fetchMessageListByOffsetPaginated(_ input: FetchMessageListByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ConsumerRecord])> {
        self.client.paginate(input: input, region: region, command: self.fetchMessageListByOffset, logger: logger, on: eventLoop)
    }

    /// 根据位点查询消息列表
    @inlinable @discardableResult
    public func fetchMessageListByOffsetPaginated(_ input: FetchMessageListByOffsetRequest, region: TCRegion? = nil, onResponse: @escaping (FetchMessageListByOffsetResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.fetchMessageListByOffset, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 根据位点查询消息列表
    ///
    /// - Returns: `AsyncSequence`s of `ConsumerRecord` and `FetchMessageListByOffsetResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func fetchMessageListByOffsetPaginator(_ input: FetchMessageListByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<FetchMessageListByOffsetRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.fetchMessageListByOffset, logger: logger, on: eventLoop)
    }
}
