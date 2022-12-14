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

extension Ame {
    /// DescribeKTVSuggestions请求参数结构体
    public struct DescribeKTVSuggestionsRequest: TCRequestModel {
        /// 联想关键词
        public let keyWord: String

        public init(keyWord: String) {
            self.keyWord = keyWord
        }

        enum CodingKeys: String, CodingKey {
            case keyWord = "KeyWord"
        }
    }

    /// DescribeKTVSuggestions返回参数结构体
    public struct DescribeKTVSuggestionsResponse: TCResponseModel {
        /// 联想词信息列表。返回总数最大为10。
        public let ktvSuggestionInfoSet: [KTVSuggestionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvSuggestionInfoSet = "KTVSuggestionInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取直播互动曲库联想词
    @inlinable
    public func describeKTVSuggestions(_ input: DescribeKTVSuggestionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKTVSuggestionsResponse > {
        self.client.execute(action: "DescribeKTVSuggestions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库联想词
    @inlinable
    public func describeKTVSuggestions(_ input: DescribeKTVSuggestionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSuggestionsResponse {
        try await self.client.execute(action: "DescribeKTVSuggestions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库联想词
    @inlinable
    public func describeKTVSuggestions(keyWord: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKTVSuggestionsResponse > {
        self.describeKTVSuggestions(DescribeKTVSuggestionsRequest(keyWord: keyWord), logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库联想词
    @inlinable
    public func describeKTVSuggestions(keyWord: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSuggestionsResponse {
        try await self.describeKTVSuggestions(DescribeKTVSuggestionsRequest(keyWord: keyWord), logger: logger, on: eventLoop)
    }
}
