//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cls {
    /// 删除索引配置
    ///
    /// 本接口用于删除日志主题的索引配置，删除索引配置后将无法检索和查询采集到的日志。
    @inlinable
    public func deleteIndex(_ input: DeleteIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteIndexResponse > {
        self.client.execute(action: "DeleteIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除索引配置
    ///
    /// 本接口用于删除日志主题的索引配置，删除索引配置后将无法检索和查询采集到的日志。
    @inlinable
    public func deleteIndex(_ input: DeleteIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIndexResponse {
        try await self.client.execute(action: "DeleteIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteIndex请求参数结构体
    public struct DeleteIndexRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String
        
        public init (topicId: String) {
            self.topicId = topicId
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }
    
    /// DeleteIndex返回参数结构体
    public struct DeleteIndexResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}