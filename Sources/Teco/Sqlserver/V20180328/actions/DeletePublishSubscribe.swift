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

extension Sqlserver {
    /// 删除发布订阅
    ///
    /// 本接口（DeletePublishSubscribe）用于删除两个数据库间的发布订阅关系。
    @inlinable
    public func deletePublishSubscribe(_ input: DeletePublishSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePublishSubscribeResponse > {
        self.client.execute(action: "DeletePublishSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除发布订阅
    ///
    /// 本接口（DeletePublishSubscribe）用于删除两个数据库间的发布订阅关系。
    @inlinable
    public func deletePublishSubscribe(_ input: DeletePublishSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePublishSubscribeResponse {
        try await self.client.execute(action: "DeletePublishSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeletePublishSubscribe请求参数结构体
    public struct DeletePublishSubscribeRequest: TCRequestModel {
        /// 发布订阅ID，可通过DescribePublishSubscribe接口获得
        public let publishSubscribeId: UInt64
        
        /// 待删除的数据库的订阅发布关系集合
        public let databaseTupleSet: [DatabaseTuple]
        
        public init (publishSubscribeId: UInt64, databaseTupleSet: [DatabaseTuple]) {
            self.publishSubscribeId = publishSubscribeId
            self.databaseTupleSet = databaseTupleSet
        }
        
        enum CodingKeys: String, CodingKey {
            case publishSubscribeId = "PublishSubscribeId"
            case databaseTupleSet = "DatabaseTupleSet"
        }
    }
    
    /// DeletePublishSubscribe返回参数结构体
    public struct DeletePublishSubscribeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
