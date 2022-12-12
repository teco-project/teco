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

extension Ckafka {
    /// FetchMessageByOffset请求参数结构体
    public struct FetchMessageByOffsetRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// 主题名
        public let topic: String
        
        /// 分区id
        public let partition: Int64
        
        /// 位点信息，必填
        public let offset: Int64?
        
        public init (instanceId: String, topic: String, partition: Int64, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.topic = topic
            self.partition = partition
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topic = "Topic"
            case partition = "Partition"
            case offset = "Offset"
        }
    }
    
    /// FetchMessageByOffset返回参数结构体
    public struct FetchMessageByOffsetResponse: TCResponseModel {
        /// 返回结果
        public let result: ConsumerRecord
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchMessageByOffset(_ input: FetchMessageByOffsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < FetchMessageByOffsetResponse > {
        self.client.execute(action: "FetchMessageByOffset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询消息
    ///
    /// 根据指定offset位置的消息
    @inlinable
    public func fetchMessageByOffset(_ input: FetchMessageByOffsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FetchMessageByOffsetResponse {
        try await self.client.execute(action: "FetchMessageByOffset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
