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

extension Lcic {
    /// DescribeQuestionList请求参数结构体
    public struct DescribeQuestionListRequest: TCRequestModel {
        /// 房间ID
        public let roomId: UInt64

        /// 分页查询当前页数，从1开始递增，默认值为1
        public let page: Int64?

        /// 分页查询当前页数，从1开始递增，默认值为1
        public let limit: Int64?

        public init(roomId: UInt64, page: Int64? = nil, limit: Int64? = nil) {
            self.roomId = roomId
            self.page = page
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case page = "Page"
            case limit = "Limit"
        }
    }

    /// DescribeQuestionList返回参数结构体
    public struct DescribeQuestionListResponse: TCResponseModel {
        /// 符合查询条件的房间问答问题总数
        public let total: UInt64

        /// 房间问答问题列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let questionInfo: [QuestionInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case questionInfo = "QuestionInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取课堂提问列表
    ///
    /// 获取房间提问列表
    @inlinable
    public func describeQuestionList(_ input: DescribeQuestionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuestionListResponse> {
        self.client.execute(action: "DescribeQuestionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取课堂提问列表
    ///
    /// 获取房间提问列表
    @inlinable
    public func describeQuestionList(_ input: DescribeQuestionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuestionListResponse {
        try await self.client.execute(action: "DescribeQuestionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取课堂提问列表
    ///
    /// 获取房间提问列表
    @inlinable
    public func describeQuestionList(roomId: UInt64, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuestionListResponse> {
        self.describeQuestionList(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取课堂提问列表
    ///
    /// 获取房间提问列表
    @inlinable
    public func describeQuestionList(roomId: UInt64, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuestionListResponse {
        try await self.describeQuestionList(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
