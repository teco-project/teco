//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Live {
    /// DescribeLiveRecordRules请求参数结构体
    public struct DescribeLiveRecordRulesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLiveRecordRules返回参数结构体
    public struct DescribeLiveRecordRulesResponse: TCResponseModel {
        /// 规则列表。
        public let rules: [RuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case requestId = "RequestId"
        }
    }

    /// 获取录制规则列表
    @inlinable
    public func describeLiveRecordRules(_ input: DescribeLiveRecordRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordRulesResponse> {
        self.client.execute(action: "DescribeLiveRecordRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取录制规则列表
    @inlinable
    public func describeLiveRecordRules(_ input: DescribeLiveRecordRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordRulesResponse {
        try await self.client.execute(action: "DescribeLiveRecordRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取录制规则列表
    @inlinable
    public func describeLiveRecordRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordRulesResponse> {
        self.describeLiveRecordRules(DescribeLiveRecordRulesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取录制规则列表
    @inlinable
    public func describeLiveRecordRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordRulesResponse {
        try await self.describeLiveRecordRules(DescribeLiveRecordRulesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
