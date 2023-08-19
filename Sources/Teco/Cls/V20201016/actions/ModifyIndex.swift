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

import Logging
import NIOCore
import TecoCore

extension Cls {
    /// ModifyIndex请求参数结构体
    public struct ModifyIndexRequest: TCRequest {
        /// 日志主题ID
        public let topicId: String

        /// 默认不生效
        public let status: Bool?

        /// 索引规则
        public let rule: RuleInfo?

        /// 内置保留字段（`__FILENAME__`，`__HOSTNAME__`及`__SOURCE__`）是否包含至全文索引，默认为false，推荐设置为true
        /// * false:不包含
        /// * true:包含
        public let includeInternalFields: Bool?

        /// 元数据字段（前缀为`__TAG__`的字段）是否包含至全文索引，默认为0，推荐设置为1
        /// * 0:仅包含开启键值索引的元数据字段
        /// * 1:包含所有元数据字段
        /// * 2:不包含任何元数据字段
        public let metadataFlag: UInt64?

        public init(topicId: String, status: Bool? = nil, rule: RuleInfo? = nil, includeInternalFields: Bool? = nil, metadataFlag: UInt64? = nil) {
            self.topicId = topicId
            self.status = status
            self.rule = rule
            self.includeInternalFields = includeInternalFields
            self.metadataFlag = metadataFlag
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case status = "Status"
            case rule = "Rule"
            case includeInternalFields = "IncludeInternalFields"
            case metadataFlag = "MetadataFlag"
        }
    }

    /// ModifyIndex返回参数结构体
    public struct ModifyIndexResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改索引
    ///
    /// 本接口用于修改索引配置，该接口除受默认接口请求频率限制外，针对单个日志主题，并发数不能超过1，即同一时间同一个日志主题只能有一个正在执行的索引配置修改操作。
    @inlinable @discardableResult
    public func modifyIndex(_ input: ModifyIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIndexResponse> {
        self.client.execute(action: "ModifyIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改索引
    ///
    /// 本接口用于修改索引配置，该接口除受默认接口请求频率限制外，针对单个日志主题，并发数不能超过1，即同一时间同一个日志主题只能有一个正在执行的索引配置修改操作。
    @inlinable @discardableResult
    public func modifyIndex(_ input: ModifyIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIndexResponse {
        try await self.client.execute(action: "ModifyIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改索引
    ///
    /// 本接口用于修改索引配置，该接口除受默认接口请求频率限制外，针对单个日志主题，并发数不能超过1，即同一时间同一个日志主题只能有一个正在执行的索引配置修改操作。
    @inlinable @discardableResult
    public func modifyIndex(topicId: String, status: Bool? = nil, rule: RuleInfo? = nil, includeInternalFields: Bool? = nil, metadataFlag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIndexResponse> {
        self.modifyIndex(.init(topicId: topicId, status: status, rule: rule, includeInternalFields: includeInternalFields, metadataFlag: metadataFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改索引
    ///
    /// 本接口用于修改索引配置，该接口除受默认接口请求频率限制外，针对单个日志主题，并发数不能超过1，即同一时间同一个日志主题只能有一个正在执行的索引配置修改操作。
    @inlinable @discardableResult
    public func modifyIndex(topicId: String, status: Bool? = nil, rule: RuleInfo? = nil, includeInternalFields: Bool? = nil, metadataFlag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIndexResponse {
        try await self.modifyIndex(.init(topicId: topicId, status: status, rule: rule, includeInternalFields: includeInternalFields, metadataFlag: metadataFlag), region: region, logger: logger, on: eventLoop)
    }
}
