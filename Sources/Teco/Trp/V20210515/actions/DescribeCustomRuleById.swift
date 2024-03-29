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

extension Trp {
    /// DescribeCustomRuleById请求参数结构体
    public struct DescribeCustomRuleByIdRequest: TCRequest {
        /// 码规则ID
        public let customId: String

        /// 企业ID
        public let corpId: UInt64?

        public init(customId: String, corpId: UInt64? = nil) {
            self.customId = customId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case corpId = "CorpId"
        }
    }

    /// DescribeCustomRuleById返回参数结构体
    public struct DescribeCustomRuleByIdResponse: TCResponse {
        /// 码规则信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customRule: CustomRule?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customRule = "CustomRule"
            case requestId = "RequestId"
        }
    }

    /// 查自定义码规则
    @inlinable
    public func describeCustomRuleById(_ input: DescribeCustomRuleByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomRuleByIdResponse> {
        self.client.execute(action: "DescribeCustomRuleById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查自定义码规则
    @inlinable
    public func describeCustomRuleById(_ input: DescribeCustomRuleByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRuleByIdResponse {
        try await self.client.execute(action: "DescribeCustomRuleById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查自定义码规则
    @inlinable
    public func describeCustomRuleById(customId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomRuleByIdResponse> {
        self.describeCustomRuleById(.init(customId: customId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查自定义码规则
    @inlinable
    public func describeCustomRuleById(customId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRuleByIdResponse {
        try await self.describeCustomRuleById(.init(customId: customId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
