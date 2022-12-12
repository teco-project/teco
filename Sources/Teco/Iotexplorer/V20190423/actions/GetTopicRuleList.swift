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

extension Iotexplorer {
    /// GetTopicRuleList请求参数结构体
    public struct GetTopicRuleListRequest: TCRequestModel {
        /// 请求的页数
        public let pageNum: Int64
        
        /// 分页的大小
        public let pageSize: Int64
        
        public init (pageNum: Int64, pageSize: Int64) {
            self.pageNum = pageNum
            self.pageSize = pageSize
        }
        
        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }
    }
    
    /// GetTopicRuleList返回参数结构体
    public struct GetTopicRuleListResponse: TCResponseModel {
        /// 规则总数量
        public let totalCnt: Int64
        
        /// 规则列表
        public let rules: [TopicRuleInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case rules = "Rules"
            case requestId = "RequestId"
        }
    }
    
    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(_ input: GetTopicRuleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTopicRuleListResponse > {
        self.client.execute(action: "GetTopicRuleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取规则列表
    @inlinable
    public func getTopicRuleList(_ input: GetTopicRuleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicRuleListResponse {
        try await self.client.execute(action: "GetTopicRuleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
