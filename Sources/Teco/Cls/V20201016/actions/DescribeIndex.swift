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

extension Cls {
    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(_ input: DescribeIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIndexResponse > {
        self.client.execute(action: "DescribeIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(_ input: DescribeIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexResponse {
        try await self.client.execute(action: "DescribeIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIndex请求参数结构体
    public struct DescribeIndexRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String
        
        public init (topicId: String) {
            self.topicId = topicId
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }
    
    /// DescribeIndex返回参数结构体
    public struct DescribeIndexResponse: TCResponseModel {
        /// 日志主题ID
        public let topicId: String
        
        /// 是否生效
        public let status: Bool
        
        /// 索引配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rule: RuleInfo
        
        /// 索引修改时间，初始值为索引创建时间。
        public let modifyTime: String
        
        /// 全文索引系统预置字段标记，默认false。  false:不包含系统预置字段， true:包含系统预置字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let includeInternalFields: Bool?
        
        /// 元数据相关标志位，默认为0。 0：全文索引包括开启键值索引的元数据字段， 1：全文索引包括所有元数据字段，2：全文索引不包括元数据字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metadataFlag: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case status = "Status"
            case rule = "Rule"
            case modifyTime = "ModifyTime"
            case includeInternalFields = "IncludeInternalFields"
            case metadataFlag = "MetadataFlag"
            case requestId = "RequestId"
        }
    }
}
