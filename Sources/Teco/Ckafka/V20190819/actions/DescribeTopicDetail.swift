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
    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopicDetailResponse > {
        self.client.execute(action: "DescribeTopicDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicDetailResponse {
        try await self.client.execute(action: "DescribeTopicDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTopicDetail请求参数结构体
    public struct DescribeTopicDetailRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// （过滤条件）按照topicName过滤，支持模糊查询
        public let searchWord: String?
        
        /// 偏移量，不填默认为0
        public let offset: Int64?
        
        /// 返回数量，不填则默认 10，最大值20，取值要大于0
        public let limit: Int64?
        
        /// Acl预设策略名称
        public let aclRuleName: String?
        
        public init (instanceId: String, searchWord: String?, offset: Int64?, limit: Int64?, aclRuleName: String?) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.aclRuleName = aclRuleName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case aclRuleName = "AclRuleName"
        }
    }
    
    /// DescribeTopicDetail返回参数结构体
    public struct DescribeTopicDetailResponse: TCResponseModel {
        /// 返回的主题详情实体
        public let result: TopicDetailResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
