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

extension Cls {
    /// DescribeIndex请求参数结构体
    public struct DescribeIndexRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String

        public init(topicId: String) {
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
        public let rule: RuleInfo?

        /// 索引修改时间，初始值为索引创建时间。
        public let modifyTime: String

        /// 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引
        /// * false:不包含
        /// * true:包含
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let includeInternalFields: Bool?

        /// 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引
        /// * 0:仅包含开启键值索引的元数据字段
        /// * 1:包含所有元数据字段
        /// * 2:不包含任何元数据字段
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

    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(_ input: DescribeIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexResponse> {
        self.client.execute(action: "DescribeIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(_ input: DescribeIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexResponse {
        try await self.client.execute(action: "DescribeIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexResponse> {
        self.describeIndex(DescribeIndexRequest(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取索引配置信息
    ///
    /// 本接口用于获取索引配置信息
    @inlinable
    public func describeIndex(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexResponse {
        try await self.describeIndex(DescribeIndexRequest(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
