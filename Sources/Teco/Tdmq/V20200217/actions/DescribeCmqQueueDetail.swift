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

extension Tdmq {
    /// DescribeCmqQueueDetail请求参数结构体
    public struct DescribeCmqQueueDetailRequest: TCRequestModel {
        /// 精确匹配QueueName
        public let queueName: String

        public init(queueName: String) {
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
        }
    }

    /// DescribeCmqQueueDetail返回参数结构体
    public struct DescribeCmqQueueDetailResponse: TCResponseModel {
        /// 队列详情列表。
        public let queueDescribe: CmqQueue

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case queueDescribe = "QueueDescribe"
            case requestId = "RequestId"
        }
    }

    /// 查询cmq队列详情
    @inlinable
    public func describeCmqQueueDetail(_ input: DescribeCmqQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqQueueDetailResponse> {
        self.client.execute(action: "DescribeCmqQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cmq队列详情
    @inlinable
    public func describeCmqQueueDetail(_ input: DescribeCmqQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqQueueDetailResponse {
        try await self.client.execute(action: "DescribeCmqQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询cmq队列详情
    @inlinable
    public func describeCmqQueueDetail(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqQueueDetailResponse> {
        self.describeCmqQueueDetail(DescribeCmqQueueDetailRequest(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询cmq队列详情
    @inlinable
    public func describeCmqQueueDetail(queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqQueueDetailResponse {
        try await self.describeCmqQueueDetail(DescribeCmqQueueDetailRequest(queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
