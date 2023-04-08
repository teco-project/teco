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

extension Yinsuda {
    /// DescribeKTVSuggestions请求参数结构体
    public struct DescribeKTVSuggestionsRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 搜索词。
        public let keyWord: String

        public init(appName: String, userId: String, keyWord: String) {
            self.appName = appName
            self.userId = userId
            self.keyWord = keyWord
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case keyWord = "KeyWord"
        }
    }

    /// DescribeKTVSuggestions返回参数结构体
    public struct DescribeKTVSuggestionsResponse: TCResponseModel {
        /// 联想词信息列表。
        public let ktvSuggestionInfoSet: [KTVSuggestionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvSuggestionInfoSet = "KTVSuggestionInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取联想词
    ///
    /// 根据关键词获取联想词列表。
    @inlinable
    public func describeKTVSuggestions(_ input: DescribeKTVSuggestionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSuggestionsResponse> {
        self.client.execute(action: "DescribeKTVSuggestions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取联想词
    ///
    /// 根据关键词获取联想词列表。
    @inlinable
    public func describeKTVSuggestions(_ input: DescribeKTVSuggestionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSuggestionsResponse {
        try await self.client.execute(action: "DescribeKTVSuggestions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取联想词
    ///
    /// 根据关键词获取联想词列表。
    @inlinable
    public func describeKTVSuggestions(appName: String, userId: String, keyWord: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSuggestionsResponse> {
        self.describeKTVSuggestions(.init(appName: appName, userId: userId, keyWord: keyWord), region: region, logger: logger, on: eventLoop)
    }

    /// 获取联想词
    ///
    /// 根据关键词获取联想词列表。
    @inlinable
    public func describeKTVSuggestions(appName: String, userId: String, keyWord: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSuggestionsResponse {
        try await self.describeKTVSuggestions(.init(appName: appName, userId: userId, keyWord: keyWord), region: region, logger: logger, on: eventLoop)
    }
}
