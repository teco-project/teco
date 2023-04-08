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

import TecoCore

extension Yinsuda {
    /// DescribeKTVMatchMusics请求参数结构体
    public struct DescribeKTVMatchMusicsRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 匹配规则列表。
        public let rules: [KTVMatchRule]

        public init(appName: String, userId: String, rules: [KTVMatchRule]) {
            self.appName = appName
            self.userId = userId
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case rules = "Rules"
        }
    }

    /// DescribeKTVMatchMusics返回参数结构体
    public struct DescribeKTVMatchMusicsResponse: TCResponseModel {
        /// 匹配到的歌曲列表。
        public let matchMusicSet: [KTVMatchMusic]

        /// 未匹配的规则列表。
        public let notMatchRuleSet: [KTVMatchRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case matchMusicSet = "MatchMusicSet"
            case notMatchRuleSet = "NotMatchRuleSet"
            case requestId = "RequestId"
        }
    }

    /// 匹配歌曲
    ///
    /// 根据输入的规则匹配曲库中的歌曲。
    @inlinable
    public func describeKTVMatchMusics(_ input: DescribeKTVMatchMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVMatchMusicsResponse> {
        self.client.execute(action: "DescribeKTVMatchMusics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 匹配歌曲
    ///
    /// 根据输入的规则匹配曲库中的歌曲。
    @inlinable
    public func describeKTVMatchMusics(_ input: DescribeKTVMatchMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVMatchMusicsResponse {
        try await self.client.execute(action: "DescribeKTVMatchMusics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 匹配歌曲
    ///
    /// 根据输入的规则匹配曲库中的歌曲。
    @inlinable
    public func describeKTVMatchMusics(appName: String, userId: String, rules: [KTVMatchRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVMatchMusicsResponse> {
        self.describeKTVMatchMusics(.init(appName: appName, userId: userId, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 匹配歌曲
    ///
    /// 根据输入的规则匹配曲库中的歌曲。
    @inlinable
    public func describeKTVMatchMusics(appName: String, userId: String, rules: [KTVMatchRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVMatchMusicsResponse {
        try await self.describeKTVMatchMusics(.init(appName: appName, userId: userId, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
