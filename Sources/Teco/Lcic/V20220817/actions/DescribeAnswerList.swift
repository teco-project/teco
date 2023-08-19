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

extension Lcic {
    /// DescribeAnswerList请求参数结构体
    public struct DescribeAnswerListRequest: TCRequest {
        /// 问题ID
        public let questionId: String

        /// 1
        public let page: Int64?

        /// 100
        public let limit: Int64?

        public init(questionId: String, page: Int64? = nil, limit: Int64? = nil) {
            self.questionId = questionId
            self.page = page
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case questionId = "QuestionId"
            case page = "Page"
            case limit = "Limit"
        }
    }

    /// DescribeAnswerList返回参数结构体
    public struct DescribeAnswerListResponse: TCResponse {
        /// 符合查询条件的房间答案总数
        public let total: UInt64

        /// 房间提问答案列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let answerInfo: [AnswerInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case answerInfo = "AnswerInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取房间答题详情
    @inlinable
    public func describeAnswerList(_ input: DescribeAnswerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAnswerListResponse> {
        self.client.execute(action: "DescribeAnswerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间答题详情
    @inlinable
    public func describeAnswerList(_ input: DescribeAnswerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnswerListResponse {
        try await self.client.execute(action: "DescribeAnswerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间答题详情
    @inlinable
    public func describeAnswerList(questionId: String, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAnswerListResponse> {
        self.describeAnswerList(.init(questionId: questionId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间答题详情
    @inlinable
    public func describeAnswerList(questionId: String, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnswerListResponse {
        try await self.describeAnswerList(.init(questionId: questionId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
