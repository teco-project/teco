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

extension Ckafka {
    /// FetchDatahubMessageByOffset请求参数结构体
    public struct FetchDatahubMessageByOffsetRequest: TCRequestModel {
        /// 主题名
        public let name: String

        /// 分区id
        public let partition: Int64

        /// 位点信息，必填
        public let offset: Int64?

        public init(name: String, partition: Int64, offset: Int64? = nil) {
            self.name = name
            self.partition = partition
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case partition = "Partition"
            case offset = "Offset"
        }
    }

    /// FetchDatahubMessageByOffset返回参数结构体
    public struct FetchDatahubMessageByOffsetResponse: TCResponseModel {
        /// 返回结果
        public let result: ConsumerRecord

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询Datahub Topic消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchDatahubMessageByOffset(_ input: FetchDatahubMessageByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchDatahubMessageByOffsetResponse> {
        self.client.execute(action: "FetchDatahubMessageByOffset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchDatahubMessageByOffset(_ input: FetchDatahubMessageByOffsetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchDatahubMessageByOffsetResponse {
        try await self.client.execute(action: "FetchDatahubMessageByOffset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Datahub Topic消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchDatahubMessageByOffset(name: String, partition: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FetchDatahubMessageByOffsetResponse> {
        self.fetchDatahubMessageByOffset(FetchDatahubMessageByOffsetRequest(name: name, partition: partition, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub Topic消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchDatahubMessageByOffset(name: String, partition: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchDatahubMessageByOffsetResponse {
        try await self.fetchDatahubMessageByOffset(FetchDatahubMessageByOffsetRequest(name: name, partition: partition, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
